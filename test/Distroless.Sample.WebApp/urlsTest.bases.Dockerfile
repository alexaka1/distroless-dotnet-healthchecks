# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:347d675d829688ccafb2bf25d9fca482ec5ce3f38a70dfae311458c622e89a65
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:d00ac649c0daf78a95615c630e60c884375ef9e583dc03e82a6c4b3f4a12fe64
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:d73ed9f9b83172d58777e4370e39a486ba9253ce04a240dcdd3c416bb6f24ff4
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:ef120bd54269271d0c64101d81df3e754345a17fac1ca3925159e451f7c36036
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:46dac160dc5ea8fad6d37436de4dc0d65d5c8e587e4a7021e64345d4d64a16f0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:29dee9028c07edc8fb0631c2fad0c9eae5b9febe2d7c832b271b951b12050918
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:606fc2488b9a4e44edca99ae353f1558e4b4a7f33fde9bfa4a08e0d79ef9bd88
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:e233db8f379f338e50c7147bf89285a14ba922d1aa51213a301463e83e10d9fa
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:639e9f51380b820938a572ac7c2cedaf438c24c9a0002f1ecc326b796601c17d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
