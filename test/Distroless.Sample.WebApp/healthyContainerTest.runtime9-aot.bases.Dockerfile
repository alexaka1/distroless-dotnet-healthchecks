FROM mcr.microsoft.com/dotnet/runtime:9.0@sha256:58247ef5e7520380cba38bbdb3595e78bff517fc37bb4cbd964921e30c808b36
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble@sha256:f89505e65a79a1eef365a490d9afb572a4821caa82dbf72497c980daea5ccf5a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime:9.0-alpine@sha256:6ec7c9a35965391c389c7c19fe5321d7f25b874cd5e792b93e1b4c89b6dc3140
FROM mcr.microsoft.com/dotnet/runtime:9.0-noble-chiseled@sha256:90846e7c7ea66c8464341fd8c5e92a598beaf12bdad68b201fce137536f8ac7e
FROM mcr.microsoft.com/dotnet/runtime:9.0-azurelinux3.0-distroless@sha256:b70570b592b5e5949865d805891ae4b1158f379d8fe920325f9c993c78d04fc3
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0@sha256:6341d178d397245dba5fdfb5128c3f5fc5d31b4ef612ae2e80a2e1af6a52e750
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble@sha256:8d7349c5e7cc15bfe926b972d0bbb711a285fbf65986e2e19d8333eb708b2044
#FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-alpine@sha256:f61b524799b0a07d2429829c94535494eb78bcfd47c4e1765fce6252de6ff071
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-noble-chiseled@sha256:181a88fcd257f07f3b79448e8fab08114404a4b45842a9de7ca6504eece1f00f
FROM mcr.microsoft.com/dotnet/nightly/runtime:9.0-azurelinux3.0-distroless@sha256:a1f5b2e71c4ef3f890babaabc95310d7c5da535306756a3e0f19ff593bebed23
