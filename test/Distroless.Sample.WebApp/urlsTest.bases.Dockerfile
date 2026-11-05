# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:90911eddf4da6329a9ab4b2ff0d18e0e3929de5ec4a4a320e301adbe99edc587
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:08099921d9e4bdf6f0ffd0bf5c7439d3bea0251e19db6be81105a60b89dce991
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:20f880723c50be5e68a827001702ba8342243b038e147bab8444b34c6e3ab20a
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:3473b0a1cdd0ebf3e4b88367ad30c35a649126320da5c182b89585ea422de7ac
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:6b41570c560e0a98cdff2ba744e2fec4eaf3472ff2dcb27a22c278a33331f8ce
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:b6b50f535e870acf64394609f7139cb0ba920106a469cbd7f9454a14ef5bbe8c
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:7a99c736dd90752089ba77a5a28fb0cc2ef3de6492744b302b488cc6a01efda6

FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:aea1377dee51aebd21331475db262103a157ee71b974bace5e2fbccf537d6492
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:be9ca64025652917a05e8e3f35a7ec762c7daafa30b15d9547444fc058c852fe
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:64a264d87af4005481e0e73fdf21a114c480821523fd85c51a723d567dd0e096
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:a2ee9f3aa51d2d5f55d14690807ce1a46f5b6dd2a7ffeb02458c05be605b9440
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:a2db6a63a64366cd612f2caed68605e2c241db6eca409dd38d36156a94229635
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:eeb0b5d892663bc46a2c0555dc3e56c608bd7d7f95687dea3fa6bdc0ace28418

FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:62028293921f5bd6db3d9f9119cd29cd926dfd3c2336da23b09f425e40c3c832
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:752897bc0b19f05fd5849897815180752103293ffc3b68bd404a4db1e5c3705c

FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:e005ba3b04a29867bdbf42a4f3348bd0a4e1321ce0ce3388f40fdfd223f8039f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:4254dca8358097b97ad952ee9e4758010c5b0e6b0e2f1193002df7c48ef99d90
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:fcd0a02534782c5232fab8b1175a49a0528826cae0f1bd79c6826cd59f6d0af0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:da74af4c827641ca017f774c80a57b5d66118937f3c1613bcfe177aecd7ed7d9

FROM mcr.microsoft.com/dotnet/runtime-deps:11.0@sha256:7d1d198d20d8f0a6bedb791ca7d56cc54c7d2d03e7efd84e0c038bde8407cbf5
FROM mcr.microsoft.com/dotnet/runtime-deps:11.0-alpine@sha256:f4d3801cac2204e2f961a931dd67a99975a436a8b5ad055898bc7029b712d44d

FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:11.0@sha256:15727e60d70b2355e987292a6e6a56e9383ade1441f5406fa12fafa8292151ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:11.0-resolute-chiseled@sha256:0cc42afb3ce10d9a2f7a24fcdb168e55b533e7c1eaa7c525e6fe9084661b1578
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:11.0-azurelinux3.0-distroless@sha256:800f37990d575c19c7e5621afb9b21472b8fa83dfd62d0c4bd40240f8c643651
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:11.0-alpine@sha256:9a7413b44589cffbd497446fc74ce2f7663bc29430f787404ee95e04a7f7daa4
