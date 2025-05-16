FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:22bcafd1f3c3bec34af587d205c631380352b15eeb52f9376f7cb3f6489c1f6f
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:d4aa91d901161760053ec547e218fac1c7e325101b1e190879fe2369f2e2fed5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:363d11f5c5979e7894c2eaaa878aed13946d52de68f5bef98d5bae11d2f242b1
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:55535e75fd10a09c6daecb4b0430e35dd5a8a052db923aed717ce6e6abf38340
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:52ee84911439624db4ff4b67821c01ac7d99f9873c7070d72c1be28ddd9279ce
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:c2aeb7c29cc936a7b200aad2ab3f75d072722ce1e130a5bebeee50d78e620a52
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:c8f8eb6dc5d2a38689dda7bb0ee5e998c7c1e224ec64828a5e4f5c4f414ffa34
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:d189e77f01dd102b2a37141fd48b9d9bfdfc10ed325906fcec2ea670331e465f
