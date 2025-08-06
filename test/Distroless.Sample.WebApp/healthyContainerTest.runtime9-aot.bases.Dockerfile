FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:58247ef5e7520380cba38bbdb3595e78bff517fc37bb4cbd964921e30c808b36
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:f89505e65a79a1eef365a490d9afb572a4821caa82dbf72497c980daea5ccf5a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:90846e7c7ea66c8464341fd8c5e92a598beaf12bdad68b201fce137536f8ac7e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:b70570b592b5e5949865d805891ae4b1158f379d8fe920325f9c993c78d04fc3
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:4275b1d341f4d35bcb1e0f343db1539f656de5c64c170ca80617ff0f939e00ee
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:2f3052a734daa7559e2cb4a579ec1229508f3f7864772344f08b9780eda6ed12
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:faa3438722be53e7816753acf246a0e3fc71775adb02456a1f8126052643a8b7
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:c6916eaccaa9a26cba42eaf2c9a47ec9a6a8b7f49df085d2aab21c5525bb027d
