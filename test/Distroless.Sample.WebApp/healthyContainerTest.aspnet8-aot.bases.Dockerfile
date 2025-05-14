FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:2d386e5e5099095e7dd8f0a884e60a2ac50d42005a8783e842b3af67a2320f72
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:5d5abe42f74ba1d91ec1ede78a6a430473691117689c7c84fb40beb76a4bf2cb
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:d1eb1d7fe1687372fd4e420fb6cb1f51ff85aabee7a172281690fb05cb3452db
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:7a8363a3602a64fb20ea8b9863ca02bf624d5e67a81898d1213f3b44c02408f7
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:8cec93e3d983c62590c97306e4d258f754f23277ef2eba774d7c9aecfdf02b92
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:fc42dd491e000d12c86ffc7587ce4577cd381aeda6c4db623f2f83de9a5949f9
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:fd083a40222d9eb28065a1df83ecdc0c9f95501dfc972f4bca209a49c3dafb9c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:91145faea866fa35641b4d584d2210445058810d7b941b11b33191a3c3f22da1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:5456f760abbdf11f02de93f0751d9e145378d52aef8a2c219bd73c271ca57caa
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:c0650f4fb3aa6abc41b046fedf243ebc558aa3a54a6fdced2ff8a684f936e888
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:91845dd9cc079414cbcba2b353c125d63027989fbc09b7fc05732774cf94fa9a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:377b3d91611dc893dd1d03f8c867d0370254739651d8ae553cfafd9744ce36cd
