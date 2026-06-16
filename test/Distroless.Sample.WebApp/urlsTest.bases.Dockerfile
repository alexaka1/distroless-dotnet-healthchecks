# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:8af27573a9a2df77a43079c4ddd7a2bd20f24d39f4ae5b71b1f2ba0101c7b68d
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:7ec14bf41e70f3ca60f7b369b077636f642a0e6867caf28677d970e0abd9c6e6
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:608b519f61bce1ad7496a2544041d6c1538a5c48d056adf55af7fdc35f924283
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:18704bf18b83458ffe2fa46ff72632b1508e3236477590b82c5b7f1c718a2410
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:157e02b6ca8a7ff697ff6873ea201ad9cab770c0940d2ef2811c43f5d070b539
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:2171228850252a0bc5e5ee28fe39a62a546485ec04c9244bcd5544a398527221
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine@sha256:d115f878d4f9f0fc23d99b7b661246f2b488488e3aa33b525371a27d669a00ea
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:1dc291de4a72e72b4dd9e92954959c553a71192298011572af60eee583c9edbf
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:320e13df8f613ccd8bbf128b5a2504ab623b1237b6008bf9ebc6dff86231b4f1
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:6205e82f6dafc968c084ec9017c196fc0d1e609bb04ff931fc6cdf3f805ef7ab
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:acc45822feb013efb902c2cdd27df988403356420df08e507cd422c9b9bca80a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:d108310d73a80e2e186d8c1d2162d130f6e6b8994ea2cb11a341845dcbef7b7f
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:6e35c2048b44c277443daf296ecadab696c408408da58f3ccf39d794803ac962
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0@sha256:c7ee658e8fb276eb545cc67e2c37085dd7b902c0055d4aa35af213d1c18c6e6b
FROM mcr.microsoft.com/dotnet/runtime-deps:10.0-alpine@sha256:6b9cd428bcf8eb513655ec3677d0669fa3d18f1c6cc8deab058814dae29a3b0a
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0@sha256:f8a965ed3241323564fcf72a599b0c032f281d8c65f2dc3a02f444fb8f8fe507
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-noble-chiseled@sha256:94cbec9af5f0804479edd7298f2f5bae919403d1012047d6cd6a0daae67740ff
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-azurelinux3.0-distroless@sha256:35fcd3989cbe9102ea01f3eed64b4284ef02a0c889176447b77f0044c98af0e9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-alpine@sha256:5c2a513686cb809359e5dbc989715879269b059f707be3500dcf87fbb8a597ce
