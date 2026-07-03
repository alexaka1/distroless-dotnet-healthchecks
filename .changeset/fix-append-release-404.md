---
"distroless-dotnet-healthchecks": patch
---

Fix release workflow failure when appending binary size comparison to release notes. The append step no longer re-fetches the previous release by tag (which returned 404 after the failed 1.5.6 release); it uses the already-fetched releases list instead.
