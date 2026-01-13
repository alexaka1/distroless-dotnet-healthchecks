# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:9053ae577d78dcff9e598ed9cd78113715fcac9c12e2f93cfa5ae3fb4a1911c3
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:7ca529be6f591ba4719aee477648a388b74f45fa9f47e1aa7b75ba58cc0a3e84
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:818a26e4f9aff43aca152bbb20af4cb0d655b6c7830b74037bd88b5a613e3dfd
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:0603f84792661619d785c136dc84334b6e467afe8b5e928ee4ba2f04ee0f3cbf
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a5ae01ce4507635fd4114871411c82355f8b230972bab50b1abd10ecbc9bd77a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:67fcfd9eb82fb5e25e4a9c3a35ed612837e5b4064a680e29c11f14ae72e77242
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:d62c5b23e84b53f68849c8eb7d7f3934bb71df6a9a791e1155590440e27862bc
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:237b4f1ad00f09f65e3f39e7c6d359c981af1aeb36282fe367ca6b5e989e800d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:7c49bc5fde4f8ec4aa45a26f30c71d88da4a84df66121e24a798de10dc9b8c5b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:169fff8ab07aee182f9760c3b225c3856f8f20a49b9975005c9b269a55677a3a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2815c93922517ea9b661e470331bef21147e7bb31df67dc746a7dbabc74e5751
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:11cf6f7db95e5848758ad524437593a1baf9cca09309051b6994d07df6417d2a
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:8a7f0b163f28a19d5fc108715046dd2260c46e45c5bdbe6c574f6e9db5c980fd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:02adce9c065bab0fb78a25bee1da3ec851468b8b0f5a93dc4a3e725207b6fb26
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:5a5b3abb9892dcd52ed9616ad2e8efe0b739d050e12dba74f3bc90e109c27164
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:df6f61e63c32c7c451bad1b9280b9dc679a67618068042964f7cd9b9f3386a7b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:0e6a2a3f5431c31cf30ad8ef3aa44df2cd8152b4770a15952e4c42221b86dfde
