# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:e9aabde56bb3e55d416d4e926032af75fed831da70bb428d556120ee2649f8b0
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:9d4f8a4ea9e8ed1305dda3b34cab3c176a9dd9a8c703c7b17fe49009a605ae2e
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:9620350c3f616731c3cfcbf02a9ea85821b58a7fc1f8284ac61c399ce02263e5
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:8d1f30ef6de194348f581bae5979ba8c38eedfee63faee33f83bbcdd254a814c
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:a68c7f52cc61c335f49487557e3012cc7a43c7f874c404a653110f5fe89792fa
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:1401caf72ca021c372cc1cf0c89f6bcdd9762421dbe72f0c3a229b889805eedc
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:f516a25cab5c5359fa0fe694e024e643a97d8b677a68322571c48916581c393f
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:6e341bcccbdfb2561f53b3a2b53911dca6d336eb32b3e9ed2e99adbb1cd3da11
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:4e7a6518c56f50b779e3bde0a5d9423b0b9c77591db8d3dd10ee977833711a5f
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:378e32f2e7db7b11b6ec8baad3bd68f59e3ea6c3f9511fbf5d44ae5eacb0814d
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:356068989dfae8dac027ae13f0310a62a89c64ea975c8caf512534afc3ae0c87
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:2d14c8353f763e33af58e14c96db7f647eb9db2d6053b8bbe671536ffaf5fce1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:62950f77f582fb1fa996592695621a092df38fcc3b792c39f47a75073b000f46
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:fdfd938fa7600aafeaade1d68fb44a3b83a9fa481d660e89b9e65f274e55c08a
