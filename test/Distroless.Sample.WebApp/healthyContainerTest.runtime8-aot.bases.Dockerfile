# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1836a5b03c92b43fd7d4e403975e75520345b7e4a12187fc2b4966cfef58a9c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:9d8be8e4fbb8c0c3de691618ca507e7bb82cf5899a23d5f7a5eee8bf9856a3c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:82cbf2f92f11bfb93340bf1d3dc8a0e88c4d99b9bd4c4f33267ae8cc81984ec0
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:83ac89532aed59b91078025389d67deb00bd35db770e7d496e5c4cae8cf04ec7
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f516a25cab5c5359fa0fe694e024e643a97d8b677a68322571c48916581c393f
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:432f3c80e793467432ebca0187259fe0d45c94c436f7a216466841fd76595ea5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d4e9b98c6493a5421074f05b97fce3e6cbda4d76a0bbd7f45234276fe134746d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:616789460457539a3a7e0bed83893b520450f6f4bf7897456395e4d46cb517eb
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:853e4d718fd94cc9718b21873c30176906330f1b8d82ae45582f50b915f995cb
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:2d14c8353f763e33af58e14c96db7f647eb9db2d6053b8bbe671536ffaf5fce1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:62950f77f582fb1fa996592695621a092df38fcc3b792c39f47a75073b000f46
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:fdfd938fa7600aafeaade1d68fb44a3b83a9fa481d660e89b9e65f274e55c08a
