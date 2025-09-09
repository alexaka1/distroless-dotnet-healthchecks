# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:1836a5b03c92b43fd7d4e403975e75520345b7e4a12187fc2b4966cfef58a9c2
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0d1b1aa6d1085a4003c4b1b95ae7410482c0f7be58d46e7f83a66ad3c417419a
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:7f5e4d19e1f4f062f4ad08ae955dcb6efde88d27844943878b3edd81c0142c71
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:83ac89532aed59b91078025389d67deb00bd35db770e7d496e5c4cae8cf04ec7
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:0b851b35511b027aec950263f640ecbc58087bde3c70827bc67f0f899389bc8c
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:432f3c80e793467432ebca0187259fe0d45c94c436f7a216466841fd76595ea5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:c579784c81d1a871927808d11b4b874cc313ebd2d6d4f929743765ca216c0cf5
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:49750c1008226ce02d962717aaa39b8a5295e74f0a6ffdab914bfe0248296a22
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:853e4d718fd94cc9718b21873c30176906330f1b8d82ae45582f50b915f995cb
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:a2bf675e6b7659bf1db937466aafce51fb124e6cf93533269c373520a75e06bf
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:8c6880e775c6c6f024d251d0dd8a705079aed5ca283b1e1534381fcec0743eb3
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:e92a0d722b81cccd2f17c7c58012fcd0575a826e46e38666a3f537ecafe263dd
