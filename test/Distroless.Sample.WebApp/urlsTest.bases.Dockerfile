# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:549ea6f876285dbd6fd5f461005c368905de0945b8bb2fbcf9bba6b0c52623fc
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:b79c2f79e726c7ef2cf99f892b9dc5c11d8754ee17fd4e0e16c60738a6a02406
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:c6a9c84a181b8259f8eccc682025f137ea499501db388e5016704768344477f9
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8638fa71a7367900fa0f3819029ba504befe8155d4958229c488406a12c4c11f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:efbde7dd11decb0f9751cdd5336da759fa21aa387b3de1132deafd88a67b89fc
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b303830aed55c9d7c694aa93e57873c6dbb73a14b6e54d79a9c9cf9753220809
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:4771affef3870b0d25bda9c3dc9a866307279aaeedc4ad337de91ba35b216f80
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:b398fe8408290a5335b4ec20eb879a26a73c59575658d7ec2def2c60b7b153b4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:d9947e4fb460147fbee729a10a85a32e58685ebba1da38c42aa74606597f2307
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:e83dd54b916fe786f754934d9bc75e89373190f3f99d1915c9e92aefb864ab86
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:cb1b17f396647e6f69f16afe7d8ef0d8bebcefc5a300392cfe8558811ca5753c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:9472721cc3883ab52e48fc2252a42bfcb3e233d88eb8e98dee3cc6150ce28aef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:c14eef1f8d9a8c363dfe1c068bb88a37d3b82c6eeddd4b2442bad2075403e5f0
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:3c42b83e09a381ce02d004cf9c407a3121166cb2782ecf1372f48cff2c049da8
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:122e6638ff460ba7c7455a9dd1b81332b6e17f9845620229ca3e3b26947d4c07
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:adccbeabae3eda4a5f889add4b6e1f4bb183efdaf7b90d00f26aa3d1da25e1cf
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:15834f79d99fe5cfb7e11bcb0b1c62f895688dc85bd84b8c91c0cfa08958b952
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:60ec8328b5ca36e800ddabcf6c2b709d9f295e220edb8468fa2cf8ff5c4d33a7
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:ea46ddcc5258dcc6c9fa96d7b00bb88ffad9fef0441ac96cacbfd5c917245653
