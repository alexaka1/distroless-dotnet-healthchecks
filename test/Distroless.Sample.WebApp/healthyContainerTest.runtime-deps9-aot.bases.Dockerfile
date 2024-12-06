FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:73ea3fd522ad58faf34e1072f586e19ffd4251564bc718a952af77f2211b24dd
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:8dbc372f664eb193859b317c149544a3461ea2d1ba764287bd785d5ffb638c7a
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:ac6c775a84592caee363d6de333a56714d91e66b5355a4ec8cc5cb2c87c99ded
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a0779b6c14669ac4823b6786940abf37455968ef8bba91af87ceafc591d10769
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:79bc32dc11599ea00da0c5ce286a34c92e3225421d7a80e69a74217c08cd14a9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:feb384aac1094d5f774a95843da71e3dedff27ed55a30e3f8b9d48d974972290
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:ef3f527d0e3db3c00e3882cc838c3028ac70877379f630aa8cf559a0e31f1b00
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-alpine@sha256:a6d84c5f8f13ce220516bcb7c1831379402ea9afd1c93793393b3480bea29fe0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:c557e41f21085226971446342e45fe254eeaded2c6191c45520d61785b6735a1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled-aot@sha256:a5014305b2aaf739c8d8a7843f825e5149690c2ce37cb807b5790c08960ea769
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:581611e64e844e5eab2a504cbd20a68bd631ea630826bdd4295580af4cc3ca36
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless-aot@sha256:a62ca7ae7e8923c83e92773da7e940695250e59ec3e05bde517a62b95b1f4cf4
