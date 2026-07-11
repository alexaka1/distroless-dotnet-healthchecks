# How Renovate discovers release notes

This document explains how Renovate discovers release notes for the
`alexaka1/distroless-dotnet-healthchecks` container image, why it previously
could not find them, and how the image metadata fixes discovery.

## Summary

Renovate can use both changelog files and GitHub Release bodies. Its source code
tries them in this order:

1. Find a matching entry in a recognized changelog file.
2. If no matching changelog entry exists, find a matching GitHub Release.
3. If neither source works, use a compare link when one is available.

The implementation is in Renovate's
[`addReleaseNotes()` function](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/release-notes.ts).

## 1. Locate the source repository

For Docker dependencies, Renovate examines the latest stable image and reads
these OCI metadata values:

- `org.opencontainers.image.source` as `sourceUrl`
- `org.opencontainers.image.revision` as `gitRef`

This behavior is described in Renovate's
[Docker datasource documentation](https://docs.renovatebot.com/modules/datasource/docker/).

The release workflow publishes this source URL:

```text
https://github.com/alexaka1/distroless-dotnet-healthchecks/tree/main/src/Distroless.HealthChecks
```

Renovate's
[`addMetaData()` function](https://github.com/renovatebot/renovate/blob/main/lib/modules/datasource/metadata.ts)
recognizes the GitHub tree URL and normalizes it into:

```text
sourceUrl       = https://github.com/alexaka1/distroless-dotnet-healthchecks
sourceDirectory = src/Distroless.HealthChecks
```

The workflow places this URL in both the platform manifest metadata and the
multi-architecture image index metadata.

## 2. Determine which versions need notes

Renovate does not simply request the latest changelog entry. Its
[`getInRangeReleases()` function](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/releases.ts)
gets the available releases from the dependency datasource and filters them to
the update range:

```text
currentVersion < release.version <= newVersion
```

For an update from `1.5.8` to `1.6.0`, the relevant release list normally
contains only `1.6.0`.

If an update skips several versions, Renovate can include separate notes for
every compatible intermediate release. For example, an update from `1.5.5` to
`1.6.0` may include entries for `1.5.6`, `1.5.7`, `1.5.8`, and `1.6.0`.

## 3. Find a changelog file

For GitHub repositories, Renovate's
[`getReleaseNotesMd()` function](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/github/index.ts):

1. Reads the repository's default branch.
2. Requests its Git tree.
3. Uses recursive traversal when `sourceDirectory` is set.
4. Filters the tree for recognized changelog filenames.
5. Fetches the selected file as a Git blob.

Without `sourceDirectory`, Renovate performs a non-recursive root tree lookup.
It therefore could not see:

```text
src/Distroless.HealthChecks/CHANGELOG.md
```

Publishing the package directory in the OCI source URL causes Renovate to use a
recursive lookup and find that file.

## 4. Extract the matching changelog section

Renovate parses the complete changelog as Markdown. For each release in the
update range, it:

1. Tries heading levels from `#` through `#######`.
2. Divides the document into sections at that heading level.
3. Looks for the release version in each heading.
4. Returns only the body belonging to the matching heading.

For example:

```markdown
## 1.6.0

### Minor Changes

- Reduce native binary size.

## 1.5.8

### Patch Changes

- Previous change.
```

For version `1.6.0`, Renovate returns the content after `## 1.6.0` and before
`## 1.5.8`. Nested headings such as `### Minor Changes` remain part of the
selected entry.

The parsing and section selection are implemented by
[`getReleaseNotesMd()`](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/release-notes.ts).

## 5. Fall back to GitHub Release bodies

If no matching changelog section is found, Renovate fetches the repository's
releases and attempts to match a release using:

1. A package-prefixed tag.
2. Exactly `<version>` or `v<version>`.
3. The dependency's `gitRef` or `v<gitRef>`.
4. A user-configured `extractVersion` regular expression.

The GitHub release list is fetched by Renovate's
[`getReleaseList()` function](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/github/index.ts),
and matching is performed in
[`getReleaseNotes()`](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/release-notes.ts).

For this image, Renovate sees:

```text
packageName = alexaka1/distroless-dotnet-healthchecks
version     = 1.6.0
```

The corresponding GitHub Release tag is:

```text
distroless-dotnet-healthchecks@1.6.0
```

That tag is not any of the automatically recognized forms:

```text
1.6.0
v1.6.0
alexaka1/distroless-dotnet-healthchecks@1.6.0
```

Renovate therefore cannot associate that GitHub Release body with Docker
version `1.6.0`.

## Result and limitation

The package-directory source metadata makes Renovate display the matching
entry from `src/Distroless.HealthChecks/CHANGELOG.md` without requiring custom
configuration in every consuming repository.

It does not make Renovate consume the richer GitHub Release body containing
image digests, published tags, binary sizes, and generated `What's Changed`
content. Displaying that exact body would require GitHub Release tags that
match the Docker versions, such as `1.6.0`, or a consumer-side
`extractVersion` rule.

Renovate caches release-note results. Recent releases are normally cached for
approximately 55 minutes, while Docker label metadata may be cached for up to
24 hours. A newly published image may therefore not affect every Renovate run
immediately.

## References

- [Renovate and changelogs](https://docs.renovatebot.com/key-concepts/changelogs/)
- [Renovate Docker datasource](https://docs.renovatebot.com/modules/datasource/docker/)
- [Changelog entry point](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/index.ts)
- [Release-range filtering](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/releases.ts)
- [Changelog and GitHub Release parsing](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/release-notes.ts)
- [GitHub changelog and release fetching](https://github.com/renovatebot/renovate/blob/main/lib/workers/repository/update/pr/changelog/github/index.ts)
