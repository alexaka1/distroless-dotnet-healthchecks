# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:a5e83bdd6da3f9b7ae0545f0fb018cac9c410e3afb932e542974534e3af23c56
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:aa534a58be7a40648cfaea03888f2bd7b5b82dd21a840709ade08baeef8e23e3
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:72f1a83c7de58476caa427af1cebb20418a4cad112fe761ba0802a5a95df5860
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:c3d80b2b56f53938f4ac452791e78a4d344b80bbea3925d0339cf738a1ab4f1f
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:ffcdae272e617008588244ae5c863dcf3b2d3da880f6c70dcb056365e5a8ca68
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:e4bcd1675043760b842d396fdfce91ac149c979e96a92f99a7070eba6d94b3ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:370f60ebdcf2baea6b249e3d10f59cf5576ba1f5ed39d976abdbb3fe3416f606
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:c067307bcb93574676f20058ab2d9c4f16a0bea6ef80a8667d417e6fc53c3172
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:afb522ffad40179dcecfa76597c73ee8f94cdf9dfd03d55e9ca1a08b1ec72337
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:70611f40e2927927c54018ce56ce376e1bc01c6aaf71ab6bd687ca4470cb3b0c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:914fc3971ab2ff66bab31da011aa8e62739b6f5fc0904f94b9970391d1a0d7ad
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
