FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6283ef6b77df2c117d38da83f1e9850753e5ed56a2bd584e8dd97ef0537a4ad
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:4dd82b2866ce5a934b6fcae947cca2cf627502c551e62a65d25e7b0f7b31afde
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:dd1120cf257acbc2f364f2df68eb6965beaec47e928b6becff24943dc933d3d5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2de5eae2a1ed9dd1497a2c6cf577fbb9dccd28aef873c409fe76192f9e24f7ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcd441e99f0493225bfa0208f37a68569b1db3b737852f17e3a256ab64480ed9
