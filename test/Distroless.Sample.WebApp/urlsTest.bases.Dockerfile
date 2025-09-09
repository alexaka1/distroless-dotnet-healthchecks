# this file contains the test cases for the base images
# this is so dependabot can conveniently update these images
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:e93bb2d188efec363aee9eaaad5cb4eb4aa503c74f8547c90493dc6150f4c597
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0@sha256:863d014d9f8311a5a616f1b533086d702d294ed5fa476900574b52e813cd2ea7
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble@sha256:f59ed75410018112491478a42efa57c43d3b55730ba8c799d176ca4c9cdfb03d
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble-chiseled@sha256:a7242461161c037e1a02397f8374e777000e678d19325046afc0108c58dde882
FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-azurelinux3.0-distroless@sha256:8e653cd173666da9dffc4948a289b6c043d9de74a381e8c0595505a4099cee18
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:1f02dba3473447fb400762eb9fe5347a158b94345d709f33b961f3de6b59348d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled-aot@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0@sha256:789e4c97469c8526fb03a7789bc8daa266205bc7e73de3e4667679f50d1f9660
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble@sha256:ce47d344a65c24af874c39b06c9d699ad584b9bab747bb99e24adc444352ccef
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-noble-chiseled@sha256:2a4bbcf1c4b5a49fc04d47c54457b8af418db505d0aa7cd8f62723d5e642fa70
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:9.0-azurelinux3.0-distroless@sha256:639e9f51380b820938a572ac7c2cedaf438c24c9a0002f1ecc326b796601c17d
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview@sha256:d34be9f61b1a7d107bb5daaaf494303c8dac2c66d4a1e0b17212bdc8e35919e2
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled@sha256:38b0c0715fe4c11f73dc4c24389ddbc42aa81e38fc66a00bd2f628a6e8d2a86d
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-noble-chiseled-aot
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless@sha256:61964ad925c241da9b9a3651a6d6a76916548a53c82bc4b5f36bbe089c618002
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:10.0-preview-azurelinux3.0-distroless-aot
