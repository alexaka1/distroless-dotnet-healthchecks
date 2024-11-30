---
"alexaka1/distroless-dotnet-healthchecks": patch
---

Restrict health checks to be only valid on loopback addresses.

This limits the attack surface of the app, so that it can't be used to exfiltrate data from the container, by a malicious healthcheck address.
