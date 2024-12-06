FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:9f4b8ff0d5929df8226b83723159bb186b36c071f901d39507e1fb226299e918
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:7fd296eb8be2043f4b2b3743d85103ccf70c8789715e658bc56a48ad0bead703
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:324aeb5c8aff11794f8b066c51afc1cd6fce63e1adc214a1baaa5e736c448024
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:60ca4fb86e13fb0da02659d4aa984c9068b794082ed051731e2583c3cbd4871d
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:a41d525a2b1e9908e794a7f0c43254f79078f92bf5afa79f9d2ec967d43ac28a
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:4bb9bc1104a6d89e4f3e549a827e05a11b7911681117ebecbe1525c91b1b37c3
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:357dcfbb8c33a0938d5cbca5ac45eec43c5bf6bd215ab04dd7019ccf794c48bb
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:7a2c99fb5095a165bbdb5fe6ae3ea1b20350aea0f0173ae93549495c3611fb5f
