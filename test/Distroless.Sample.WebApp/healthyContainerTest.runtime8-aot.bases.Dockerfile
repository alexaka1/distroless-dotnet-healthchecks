# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1836a5b03c92b43fd7d4e403975e75520345b7e4a12187fc2b4966cfef58a9c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:7f8ae70184d9acf6f1cf45d6446ea7bcb1044c4f1b12b817a68bc226d0ca8baa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:32fcfc9dd35e9ec34693ada2ed69203f807cfa52fb46198905190db49938d7b1
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:83ac89532aed59b91078025389d67deb00bd35db770e7d496e5c4cae8cf04ec7
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f516a25cab5c5359fa0fe694e024e643a97d8b677a68322571c48916581c393f
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:432f3c80e793467432ebca0187259fe0d45c94c436f7a216466841fd76595ea5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:d4e9b98c6493a5421074f05b97fce3e6cbda4d76a0bbd7f45234276fe134746d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:f252f93e12d56704e677198fbf7104c601a1acb66380b9b8bede7dd6c24df019
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:853e4d718fd94cc9718b21873c30176906330f1b8d82ae45582f50b915f995cb
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:2d14c8353f763e33af58e14c96db7f647eb9db2d6053b8bbe671536ffaf5fce1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:8c6880e775c6c6f024d251d0dd8a705079aed5ca283b1e1534381fcec0743eb3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:fdfd938fa7600aafeaade1d68fb44a3b83a9fa481d660e89b9e65f274e55c08a
