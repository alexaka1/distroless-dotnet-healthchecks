FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:33ed90ab2dc5d27c690210414406840a581b74b270f2bdef8b961cfd189731eb
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:247a52e68989b526faaa7693f32ec0b2bd7b2c974b0e40792695f1598328ecbd
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:5e29a6975833d6c62744e3450389797e4335633adf1c045fbe55346c0887b03f
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:c1104b535ba71b3b1e7662741f68cdbeda37a06485e1c320bf33b752a3b7a879
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:6f3cc382ee84beb898331f8c641eb8e63bfb2032288ffaf1beae1fd7e8b3ee12
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:db42b580b248caa10609e89300202d984ccbc6d70bc694c1ba68580613e27cfd
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:c4d20dcf29f932de3b4ebd811dda8ea38f39c64e01ff2ea7b05722ce15261cfb
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:a47ae5bd68c1853ebf1691c080aed9cae7031cc1f1f641c8489f0aebbaa960c9
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:2b413f20f9c676205205a1ac1bef254fa5db5006a13b4cf39b00777042e71087
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:899ebd6681a4872ed5b3f4323964538795d2b38872eda1c75eaa4597ba2856c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:4cd7ec0999a0461a59be7dd5f1f3a7313e75ac5a0abce98c4bac0efb1aed8687
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:cb19274f4d1e585144ad5491b190bf6e4ca8f22350d7945a57bb537fdf78215b
