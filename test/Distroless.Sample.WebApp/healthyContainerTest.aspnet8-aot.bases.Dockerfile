FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:2d386e5e5099095e7dd8f0a884e60a2ac50d42005a8783e842b3af67a2320f72
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:5d5abe42f74ba1d91ec1ede78a6a430473691117689c7c84fb40beb76a4bf2cb
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:d1eb1d7fe1687372fd4e420fb6cb1f51ff85aabee7a172281690fb05cb3452db
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:7a8363a3602a64fb20ea8b9863ca02bf624d5e67a81898d1213f3b44c02408f7
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:8cec93e3d983c62590c97306e4d258f754f23277ef2eba774d7c9aecfdf02b92
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:a322d87420410ac5b5fbbd70cdeaf4ed767ed0d7162ed023e105f32b5b8a8d9b
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:be5e0ff8ef2f5ab6d64e6bb165c6d29fe55a44162880fe8b5643333741fc6748
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:e3aaa81bce3a147678814fda986c1c68e8df6e2a9c19146dfef6d022546d9c49
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:682d8ee3f6a57329d4fdb6c4486cb5a1bc2cb28f2db83603613efd335c898166
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:3bf2493dd0ba370989b0c5354be47e83a09c31fdc43fea5917cdea590f8309f2
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:6ccf450a3119f9dafcc9762e439391420a5c8814296fd03919fa3d80b28c9c45
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:18130beb126b3afe78f99dda195598871f646793763d8aa94d7021478dd910c6
