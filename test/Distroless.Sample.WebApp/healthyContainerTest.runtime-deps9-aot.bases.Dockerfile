FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:8ffcf58f74f4ee100fdc971003480069ffc47391e0676982cafe1a003ef44747
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:961ea5c42a16cc7534d7fb69b2df2b97966c349683bdd04ee5347309c8efd779
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:5cc893809e2d2869e1a98c1eecc4c6ff6978d53bc3e5342014eff28a058867a4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:aebe01f9855bd310da0950c19c791eaf3afafbf0c2bbbd164c511140bce8f29c
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:feb384aac1094d5f774a95843da71e3dedff27ed55a30e3f8b9d48d974972290
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:ef3f527d0e3db3c00e3882cc838c3028ac70877379f630aa8cf559a0e31f1b00
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:c557e41f21085226971446342e45fe254eeaded2c6191c45520d61785b6735a1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:a5014305b2aaf739c8d8a7843f825e5149690c2ce37cb807b5790c08960ea769
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:581611e64e844e5eab2a504cbd20a68bd631ea630826bdd4295580af4cc3ca36
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:a62ca7ae7e8923c83e92773da7e940695250e59ec3e05bde517a62b95b1f4cf4
