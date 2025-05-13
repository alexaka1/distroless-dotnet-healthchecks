FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:22bcafd1f3c3bec34af587d205c631380352b15eeb52f9376f7cb3f6489c1f6f
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:d4aa91d901161760053ec547e218fac1c7e325101b1e190879fe2369f2e2fed5
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:363d11f5c5979e7894c2eaaa878aed13946d52de68f5bef98d5bae11d2f242b1
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:6e10cc44cd05e09074a9e2205435d85c89fc9cbb7acdbfc855d32e5791675894
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:12bffdc6c9646fcb4ba9d8f07373037448999d146347433f22c34bd24667e501
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:71c958c102c1747ad89f1e851f7d41ccb5e07e5227e8aabbebe1853c931e98c3
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:ad6df3cad4a19098fbac4c582ee4e3f05e8889b6e4c8f6c4fb913c1f4b1fac7c
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:a979db7958008626350e9de99eb43368343ff8d9d734de3244f47268e7797ea9
