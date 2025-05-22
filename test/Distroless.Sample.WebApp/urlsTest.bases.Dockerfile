# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:2520917a9c827a581b38ada1e99198bbd6309d4b4f88e61b2424d035ae56b2e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d6283ef6b77df2c117d38da83f1e9850753e5ed56a2bd584e8dd97ef0537a4ad
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:4dd82b2866ce5a934b6fcae947cca2cf627502c551e62a65d25e7b0f7b31afde
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c03b48d53da8f6ba5ad1489892381a15e867f470c425d3254af74bb0fc23c8e1
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:dd1120cf257acbc2f364f2df68eb6965beaec47e928b6becff24943dc933d3d5
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:3be442e4caa24b49522b87cfb015ac7cda947ab21927070692d22e4240923c5a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:2de5eae2a1ed9dd1497a2c6cf577fbb9dccd28aef873c409fe76192f9e24f7ae
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:69bb00d5ec95aa3eccb2dffa226bc405dcbe0c8c1b2ffc0477d5ae8235f9e911
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:fe2070f33c445f33fc31b40bd841620d21d48554e3c9ab8e40da07eb6f69e739
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:bcd441e99f0493225bfa0208f37a68569b1db3b737852f17e3a256ab64480ed9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:c7b1e01216f18a3416b91b45c6d1d6eb87f5d2410925a6514be174790121b037
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:8c3505e61fb6a69728ca788bad7409d5617707851cf27a12e67a83e2bfaea51c
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:a0f4a675fc5612e624e5646274d2e24cfef226ad1a41241a0c18068570c799d0
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
