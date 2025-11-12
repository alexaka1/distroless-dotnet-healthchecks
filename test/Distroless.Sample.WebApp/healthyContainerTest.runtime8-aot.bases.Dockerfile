# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:a0ca1acf193fe6c0242a25e7e05022f4b8df45fcab16d9ffb33092c026fc7e38
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0ddf7b6c81a4ed2c689ff42df5647ea8ade6b73b7ee0ae5146c9dcd2f32dcbd9
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:a811231da103fa80e9fcfff7c04dfd8c8265f4e77e72153f12d5f77853eb7098
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:cd1462cc38a0fb89c3824ac63d77cc895cfdd5cff8887a0a3806800eaa37453d
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a2f94639827b3735589eb03600d172177d07e4708f6eb0e130b77d4b3f4701fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:01a0f51c2ecb1c50daebced4b5d140973b0985e463989726ad5c66b4e2e953da
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:a1463849e1f8070dfaa182ea1d3ac1d933a41c9b8c2393645fb8e5f5d0af7a43
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:be8c191565721dd4a2b020845d421b94289552ca35c4b9f0212a9149dcc4078e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:ad36ec17603e6f668f6cfac592e7c71887d4bde955e80c9a996acef6b6c8eb65
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:15a1b76a477047ccc46cf43bb935417e971c32123ea71f93a749f954e02f8848
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:045e62aad5ed5cf518d2f4eb967e41421236f84a720cb9f2a0c79b452d003a58
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:edb53f3fc42c36a910a2f3efb97ceba361f5e84677aac0733a58671ed5287fb2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:c2273269e3e8506ffedb1488046b112992f8b3cb8c08ae4221bdc5431ed30707
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:ea2bdf9f739f8a749b48b6b512a0528db849f6259742df261fa29bdde92a6b22
