FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:ab605d8d1b0886af2ef4bbaf5167fbe237670b6fd9829a05c4d08406afdd985e
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble@sha256:276bb42c3791040e06bb7028d26b0c82ff354b15c17a99f9ea263fe540135224
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy@sha256:ef351c11adc72a3581adb079bd1c212f9b92036088bce2aea4043d42c20344f5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine@sha256:f0b22dfc7126bc600db137678d88e848075a8ab87ab0808764633fb86f6398d5
FROM mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled@sha256:4031241cecfb3ebd7b3734c383b0e2ce0c8aa8b349d6888ad1e2c3030eeaa6ae
FROM mcr.microsoft.com/dotnet/aspnet:8.0-jammy-chiseled@sha256:09d88164bedd70b05f12ecd463ddc7c9a5ebe12e4c2bb2bf50ce224049738d9f
FROM mcr.microsoft.com/dotnet/aspnet:8.0-azurelinux3.0-distroless@sha256:5ad52a0f3fe08bf3f819a9767b49c280ea2fd7a49850a3c93b9f659a14f93cb1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0@sha256:b341e578b9f15fd0c6a6d75d623d7bf8551a926a6cdfe6cd0b7fc9f05ca68c20
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble@sha256:f069ecf81c6c0113d7a3e45287fde247cc27e915169b06a812a709d8857b9d81
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy@sha256:c88128ab579487fc422d598bf53a954e98c8de96673d62c7991af17bcae7f648
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine@sha256:98a00b54d77483df498494d98895db03ce0a5d7b783c4a2930485547e49c7365
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-noble-chiseled@sha256:c0650f4fb3aa6abc41b046fedf243ebc558aa3a54a6fdced2ff8a684f936e888
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-jammy-chiseled@sha256:91845dd9cc079414cbcba2b353c125d63027989fbc09b7fc05732774cf94fa9a
FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-azurelinux3.0-distroless@sha256:b49b51bdeb57b4ad4fc153aaef3e2fea334ea6fc5cdfbd6c09795c5540c32e58
