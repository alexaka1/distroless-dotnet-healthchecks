# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:610c2ec3b3bf239e097953a5d671c3f394c246e4ff545528a3a79fb2ac10cf8a
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:50d1821b46b140348a7699b34b0f752790004a142390ff9fda94490f96d36e10
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:10d346dafacf1ca76e4e1f10a3bffa395af5c1d44c23867a7595780b787ac47d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:48ed30577596def49ef5db4313b98967c6e4938793863b88ad76e8f84b9e66fc
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:f29c598f281f9c2ded2ee23040cba36c19559ed6fae72b4e953e798aee2dac90
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b7699658d70b8f286322e3a1547a1d17ae48307434fc8b0d813d470b1ba73873
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:bb0ae51b1168ac91ab0f340ba1554da5a2f828d680034a9d1803e7d8eda63b17
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:1dc291de4a72e72b4dd9e92954959c553a71192298011572af60eee583c9edbf
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:6205e82f6dafc968c084ec9017c196fc0d1e609bb04ff931fc6cdf3f805ef7ab
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:acc45822feb013efb902c2cdd27df988403356420df08e507cd422c9b9bca80a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:6e35c2048b44c277443daf296ecadab696c408408da58f3ccf39d794803ac962
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:74fb63d5c0f90f01b79c8ee7cd536c0758bc289fc986b703147e25b84d1d4361
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:52022380f6b520a7ba69c1443bf83fa3e6d76722416784125eaf7d0628187bc1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:f8a965ed3241323564fcf72a599b0c032f281d8c65f2dc3a02f444fb8f8fe507
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:35fcd3989cbe9102ea01f3eed64b4284ef02a0c889176447b77f0044c98af0e9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
