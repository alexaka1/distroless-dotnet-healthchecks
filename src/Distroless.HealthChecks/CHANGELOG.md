# alexaka1/distroless-dotnet-healthchecks

## 0.0.1

### Patch Changes

- [#15](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/15) [`0297c9e`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/0297c9ee420abe556e52ea623a0dd0b7f24ae9fb) Thanks [@alexaka1](https://github.com/alexaka1)! - Restrict health checks to be only valid on loopback addresses.

  This limits the attack surface of the app, so that it can't be used to exfiltrate data from the container, by a malicious healthcheck address.
