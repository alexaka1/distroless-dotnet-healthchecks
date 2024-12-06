FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:9f4b8ff0d5929df8226b83723159bb186b36c071f901d39507e1fb226299e918
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:7fd296eb8be2043f4b2b3743d85103ccf70c8789715e658bc56a48ad0bead703
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:324aeb5c8aff11794f8b066c51afc1cd6fce63e1adc214a1baaa5e736c448024
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:60ca4fb86e13fb0da02659d4aa984c9068b794082ed051731e2583c3cbd4871d
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:3e3a918f80daf3ea7de7ab39d13a6432911944711761137b81bd9fc5c6354616
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:5c720d151eb18e28c1853b53df5cdf7ee7a50788ef2bbf4da61c1af938c9a0c4
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:bf4c31da4c6c397c21e4d16f0e3e284af02876a3dfea64b7bc8d01dde4e615be
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:31dac7cdaa72ad37d749df327bc54369a81837fe3256d3b16399309e358b864d
