FROM mcr.microsoft.com/dotnet/runtime-deps:8.0@sha256:3b20fdfc10d1809facd99928ef58326081b5e191b94cdb7f96dbd31212703b98
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble@sha256:f92e1dac8b898bcba99f0144358fb8d16c0f735023a4709f1de942557b4b3041
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy@sha256:cd082c5151ce91d941b49fa0fba9814bd72b14fbe72f6b6b40bbf0749f4d0785
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-alpine@sha256:511ea6fd479d4de4f142244f58a0cf7d5561196069ca365d3f32b35cfbaddcd0
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-noble-chiseled@sha256:66a57aef1291fbb6021ea124c54757577f81ceb9a9a9f57ab08fca159b031ec6
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-jammy-chiseled@sha256:dd3aa418bb13e091b394d608444a1d3b8c66ac6a340e321d107598ce11fcb081
FROM mcr.microsoft.com/dotnet/runtime-deps:8.0-azurelinux3.0-distroless@sha256:82e648f404467566101029bfe3e561bcd5987477d400124685ce8d7ccf7881a0
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0@sha256:91b9b6aedfb1a0d3592938d280cb85ed4239dc1059667bd0c597be5557416e59
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble@sha256:f6e7bc43eed102abdab112bc467acad21e75bf97d7d0887320fe2d625b28d156
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy@sha256:c77db55ad3f199d5a23ec6312fc6d3c59ac0f9033102063135b683dbc8b12589
#FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-alpine@sha256:365fce739f974ab13f57937c1a964d197386d34eeced0642c27f4a74f2ac23c4
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-noble-chiseled@sha256:a851adbee5172e83300290b13cdf855f0c28064c550189baf01196c916a1a200
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-jammy-chiseled@sha256:d100f6fed721ef92e4f43ae748cc6db6de682fe28011f91262f56f3b0187703b
FROM mcr.microsoft.com/dotnet/nightly/runtime-deps:8.0-azurelinux3.0-distroless@sha256:137799a32192b3316d59d9742d1bca12e57a8f2006e60b9ff609b1886edf7b4b
