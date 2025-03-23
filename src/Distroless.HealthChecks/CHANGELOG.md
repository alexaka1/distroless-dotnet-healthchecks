# alexaka1/distroless-dotnet-healthchecks

## 1.1.0

### Minor Changes

- [#160](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/160) [`2b4c7fb`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/2b4c7fb69f04dcd1c6a09e4b8a3f7b930110a6a9) Thanks [@alexaka1](https://github.com/alexaka1)! - Add .Net 10 support

### Patch Changes

- [#160](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/160) [`3e4aadd`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/3e4aadd397319d601f66815457602d1cd6cd9b00) Thanks [@alexaka1](https://github.com/alexaka1)! - This is a pre-release test. It is the same as 1.0.1

## 1.0.2

### Patch Changes

- [#335](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/335) [`7e45ca2`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/7e45ca20edd1d3564b815e5daf1ebb1c2da08db6) Thanks [@alexaka1](https://github.com/alexaka1)! - Rebuild with newer SDK

## 1.1.0-next.1

### Minor Changes

- [#160](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/160) [`2b4c7fb`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/2b4c7fb69f04dcd1c6a09e4b8a3f7b930110a6a9) Thanks [@alexaka1](https://github.com/alexaka1)! - Add .Net 10 support

## 1.0.2-next.0

### Patch Changes

- [`dfbcd68`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/dfbcd6810b565050e0a34568aeb1373bf4842672) Thanks [@alexaka1](https://github.com/alexaka1)! - This is a pre-release test. It is the same as 1.0.1

## 1.0.1

### Patch Changes

- [#112](https://github.com/alexaka1/distroless-dotnet-healthchecks/pull/112) [`0ff7660`](https://github.com/alexaka1/distroless-dotnet-healthchecks/commit/0ff76609eff4c256df75436db51268dddb3412e2) Thanks [@alexaka1](https://github.com/alexaka1)! - Bump deps to .NET 9.0.1

  Recompile with newer SDK

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
