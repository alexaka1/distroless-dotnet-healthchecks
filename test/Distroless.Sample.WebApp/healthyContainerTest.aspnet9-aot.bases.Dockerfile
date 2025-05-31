FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:d5507d8292fb2469ec0b9913f3cd4bb8d5a014bd6dc00c33fd4c4e7310229f07
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:a7ff823a72da2de53feb6e6146938926b0dbf55219a3bd355bd492057dadd2b7
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:363d11f5c5979e7894c2eaaa878aed13946d52de68f5bef98d5bae11d2f242b1
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:f18faed405e43ca5b47396118291c716546a94563141a21f64331d1fc60c9320
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:485a6a5364ad22964dc6062fecaed731ccbe24e165487676041b05153deb4bb0
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:bf8ee896409ab110f0a8500693f291987339bed7c4ae1fcb99431e2d92df6206
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:c8f8eb6dc5d2a38689dda7bb0ee5e998c7c1e224ec64828a5e4f5c4f414ffa34
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:8535c79cd61afbfeb0f059be070e529ae380ac63085704e7fd6ffee943c02410
