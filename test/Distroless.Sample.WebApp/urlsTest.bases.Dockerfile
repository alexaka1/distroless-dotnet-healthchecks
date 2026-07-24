# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:c28f4ea42e2db461e5021fcb4831a4acfd9b29512ca2272b6c7141bf1fb70dfc
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:5a7cc218b62062048e8622edaa06fc6a68b1afe9d46bb914417cb2ed2b3ed0bf
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:f4d69f333655696156a32b83072495bb9a25feeb6cb7b19c9ba6dd82c4b982fc
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:53c46707b70db19a8e3da705b0fc0ef3a0aa8922bac651144a14a17961659126
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:08ff1d4515ad69316a9432820f3a29f3bd3a88b0a43582848b90a1fcd54d21d3
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:42c73a732b25dbc2f2a27bb7c2d96b41dc352714cc39d2f9c559bf5ae92b464a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:7dd44bd4c712dea9b3f13fe77c16fd9cae98a83d8f9d676f786a89fcab83ad90
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:df176568c72dc68239f877f1770bcf8bd88c908b2f1d208431dc979a28e94ccb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:aa7461dc1fefc373f19b5c982e637c728187443739cf498beaf6f5dd449b2f33
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:bb9e062716fc00f3a023931b8ae7789507979a23e70201c1c163b961fea35365
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:7cebc55d514dee386a5fe7111a59cc63143ce80d84f888b812741c7a43fced15
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:dcec469de31c37f8f4456387e8bd53550782e4e958be21c4e3da6e48e08cc70c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:0ce1c307d30bf0afd6dc0551ac2b98691361e7c5e3615d31adbc81bf0a054b44
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:894098eafc82e5fa02ba9f2b71d426dc78252876b9e914caae77ed95cfce185a
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:ad7cd1ed2e913fbd806f8ecc0e8bb8e9e8fb7cfd4d3fa43be9aa0b4cd8008bf5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:83b8944617c3f912cd52f9766ea622479e657f58f59258ba546f133c73276934
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:ebe9f22225ef4b2a0d7682eb10a943fc9d137903f416a993bc46f47265495f75
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:7d3e45e97fc5a4b4d24b5301dddc677ec909b126f4ed5c8e397e6a153f7d5e84
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:2314f19772341080c39b01c83af207c0c28f084ee76c43a0c1aa8e276d527bf0
