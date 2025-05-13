FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:6159cf66274cf52730d7a0c7bb05cf0af94b79370176886ac58286ab6cbb7faf
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:88f0b54c4bcd92352bb205c0292e851634b65e7a538940cb952e7d46654e32d6
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:47039d0924f72736d02561e064e051ffdd975d78b3b6126d7d8640798c9daf6e
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:4031241cecfb3ebd7b3734c383b0e2ce0c8aa8b349d6888ad1e2c3030eeaa6ae
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:09d88164bedd70b05f12ecd463ddc7c9a5ebe12e4c2bb2bf50ce224049738d9f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:853baf2b8167204b1a14b044b96f4251b4a0e2f973593009abaeefe0de5c5e51
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:fd083a40222d9eb28065a1df83ecdc0c9f95501dfc972f4bca209a49c3dafb9c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:91145faea866fa35641b4d584d2210445058810d7b941b11b33191a3c3f22da1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:5456f760abbdf11f02de93f0751d9e145378d52aef8a2c219bd73c271ca57caa
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:c0650f4fb3aa6abc41b046fedf243ebc558aa3a54a6fdced2ff8a684f936e888
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:91845dd9cc079414cbcba2b353c125d63027989fbc09b7fc05732774cf94fa9a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:f32fdf868a73eee64b693d6a583772a366dc5dcce3b9222fb7ceed6a2e7b5ea4
