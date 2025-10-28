# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:f7919c24540786f830964c768bb4f89a1dc2323f784ae756dfe5a8c1b6dcb0d9
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:0ddf7b6c81a4ed2c689ff42df5647ea8ade6b73b7ee0ae5146c9dcd2f32dcbd9
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:a811231da103fa80e9fcfff7c04dfd8c8265f4e77e72153f12d5f77853eb7098
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:cd1462cc38a0fb89c3824ac63d77cc895cfdd5cff8887a0a3806800eaa37453d
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a2f94639827b3735589eb03600d172177d07e4708f6eb0e130b77d4b3f4701fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:01a0f51c2ecb1c50daebced4b5d140973b0985e463989726ad5c66b4e2e953da
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:60660b8e0e8d61ee0a848aad9f41bba0ec1419e9352c2ea34723a3e7500a3a74
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:71383db163315eb8f96fdce20e9c482ef92c744801d8abe97af378c22659fe2c
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:a873eb1e939255fa65ab5a015bef90751cb53edfef539285a38a65f07d4e2fad
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:a9e9144f09801712af057d3259f6f1d77385be4bc68e8c71ace3f9e6ec6cea9d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:fa477aab29bfe0c01840bfcf7094467c348c42dad1e12356df1e7ba5520b39c8
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:6a335e371f532a62feb5aeaa45cc6ce23ba2b79456ac11c2cd8769bcfd6481b0
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:8c2fc48b86df335ea5b0ea387057a4b4f915e0eabd8f163ee4d693a9d643296b
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:3554eb2d8664cbb3d57fc064cc839ca10dab684a70138ea84ba266e68a832dee
