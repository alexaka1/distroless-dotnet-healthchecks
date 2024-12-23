# alexaka1/distroless-dotnet-healthchecks

## 1.0.0

### Major Changes

- [#44](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/44) [`fa4804d`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/fa4804de735c947c0b2038409af0e970e4edfcab) Thanks [@alexaka1](https://github.com/alexaka1)! - Initial release 🎉

## 0.2.0

### Minor Changes

- [#27](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/27) [`9af1f1a`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/9af1f1acf8680db05864886166240bee53c5ac26) Thanks [@alexaka1](https://github.com/alexaka1)! - Change arguments to be `Uri` and `Uris` respectively

  `Uri` takes a single uri, and is mutually exclusive with `Uris` which takes a list of uris using the index syntax such as `Uris__0`, `Uris__1` etc.

## 0.1.0

### Minor Changes

- [#21](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/21) [`8d4cea7`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/8d4cea73d9bca6430fd29de367189c5445532eed) Thanks [@alexaka1](https://github.com/alexaka1)! - Add docs and license

## 0.0.1

### Patch Changes

- [#15](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/15) [`0297c9e`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/0297c9ee420abe556e52ea623a0dd0b7f24ae9fb) Thanks [@alexaka1](https://github.com/alexaka1)! - Restrict health checks to be only valid on loopback addresses.

  This limits the attack surface of the app, so that it can't be used to exfiltrate data from the container, by a malicious healthcheck address.
