# docker manifest inspect mcr.microsoft.com/dotnet/runtime:8.0 -v | jq -r '.[0].Descriptor.digest'
FROM mcr.microsoft.com/dotnet/runtime:8.0@sha256:ba0ccba816df6d7b76c2fef1c901893b5cce3615bd86d2dc7d9bda463e59cce0
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble@sha256:c158352380ed66a77bf99f4d5f6d4c2cb5d93682ea84f77dce6a8ae56fdeac68
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy@sha256:0381345f4edb25c2b09e8cddd7c1b349838052cf9ed175acb4be562070249d8b
FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine@sha256:0d13b132621d0ffcd952f6411b764ec2dbcdc7b7c9fc3acbd9eac5daa036a764
FROM mcr.microsoft.com/dotnet/runtime:8.0-noble-chiseled@sha256:cc9686f2c4c7136358b7ef8ed1f975b88f63e47e4733500007b609f962086b32
FROM mcr.microsoft.com/dotnet/runtime:8.0-jammy-chiseled@sha256:8e8426f0e7bb2a5a2467d4451639205bef5395196a4b4e016bb1a8a31f71ef00
FROM mcr.microsoft.com/dotnet/runtime:8.0-azurelinux3.0-distroless@sha256:4f4ca61dc5a13d983cf32bb406b123fb64b1bad9428fdde79deee31b9a5235d1
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0@sha256:be8c191565721dd4a2b020845d421b94289552ca35c4b9f0212a9149dcc4078e
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble@sha256:ad36ec17603e6f668f6cfac592e7c71887d4bde955e80c9a996acef6b6c8eb65
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy@sha256:15a1b76a477047ccc46cf43bb935417e971c32123ea71f93a749f954e02f8848
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-alpine@sha256:045e62aad5ed5cf518d2f4eb967e41421236f84a720cb9f2a0c79b452d003a58
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-noble-chiseled@sha256:edb53f3fc42c36a910a2f3efb97ceba361f5e84677aac0733a58671ed5287fb2
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-jammy-chiseled@sha256:c2273269e3e8506ffedb1488046b112992f8b3cb8c08ae4221bdc5431ed30707
FROM mcr.microsoft.com/dotnet/nightly/runtime:8.0-azurelinux3.0-distroless@sha256:6ebd87b05de5fa0f32f8af0e7c1493c5ef9352358c0f3100358fe5f01ee57355
