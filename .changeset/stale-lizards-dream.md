---
"alexaka1/distroless-dotnet-healthchecks": minor
---

Change arguments to be `Uri` and `Uris` respectively

`Uri` takes a single uri, and is mutually exclusive with `Uris` which takes a list of uris using the index syntax such as `Uris__0`, `Uris__1` etc.
