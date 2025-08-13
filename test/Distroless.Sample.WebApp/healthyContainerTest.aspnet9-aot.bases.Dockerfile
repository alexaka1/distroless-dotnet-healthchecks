FROM mcr.microsoft.com/dotnet/aspnet:9.0@sha256:2b70ef1451cb01c2118969ad15fd0ae40fdbac158f09699fefae0dc32c4ca352
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble@sha256:3bd26cb2803f4b686a205e0e9561e102a82751d30059f2566fea400ebc102120
# this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
#FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine@sha256:73c64859278d20ed7a90046c1eaa5c750d9f053cd8760781209540f452e92bcb
FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled@sha256:27854c598ad1e66dbf1e5e953548241833c7f08b318e44028e520a5fac12f023
FROM mcr.microsoft.com/dotnet/aspnet:9.0-azurelinux3.0-distroless@sha256:adf22790afb2f72488d720f0909a0705fed5f54baa84d6a2b823d3f6a1e3036d
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0@sha256:766cf5c3d3d460f0ecfd577cde763efcd36877af487cf6d543b941aee2004be4
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble@sha256:3b6b6bd43f3aa7f40b6ac8cf61f529ff129926e37b73e5f2b7a119a881c7dfeb
#FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-alpine@sha256:8ea92afa53ae5bd3d4bace14656285d9047ec786a2b5e337f2e0c6330c78e374
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-noble-chiseled@sha256:10bb0cc0ec57b868dffd2d2cbbb05c5c4b8881f1e8bb0e2856d83ca709004dd1
FROM mcr.microsoft.com/dotnet/nightly/aspnet:9.0-azurelinux3.0-distroless@sha256:cd8ce87254311b734d14bdb09d78419311aeb5b212ad205655c44c6695bfc34f
