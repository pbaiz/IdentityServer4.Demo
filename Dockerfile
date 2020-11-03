#FROM mcr.microsoft.com/dotnet/core/sdk:2.1.811-stretch AS build-env
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

WORKDIR /app
# Copy csproj and restore as distinct layers
COPY . .

ENV BuildConfiguration=release
ENV BuildPlatform="any cpu"

#RUN dotnet restore Ex8.IdentityServer/Ex8.IdentityServer.csproj
#RUN dotnet build  Ex8.IdentityServer.sln --configuration release
#RUN dotnet publish -c Release -o out
RUN dotnet publish IdentityServer4Demo.sln -c Release --self-contained -r win-x86 -o publish
#RUN dotnet restore src/IdentityServer4Demo/IdentityServer4Demo.csproj
#RUN dotnet build  IdentityServer4Demo.sln --configuration release
#RUN dotnet publish -c Release -o publish

FROM mcr.microsoft.com/dotnet/core/aspnet:2.1.22-alpine3.12
RUN apk add --no-cache icu-libs
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

WORKDIR /app
COPY --from=build-env /app/publish/ .

ENTRYPOINT ["dotnet", "IdentityServer4Demo.dll"]


#FROM mcr.microsoft.com/dotnet/core/sdk:2.1.811-stretch AS build-env
#WORKDIR /app
## Copy csproj and restore as distinct layers
#COPY . .
#ENV BuildConfiguration=release
#ENV BuildPlatform="any cpu"
#RUN dotnet restore Ex8.IdentityServer/Ex8.IdentityServer.csproj
#RUN dotnet build  Ex8.IdentityServer.sln --configuration release
#RUN dotnet publish -c Release -o out
#FROM mcr.microsoft.com/dotnet/core/aspnet:2.1.22-alpine3.12
#RUN apk add --no-cache icu-libs
#ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
#WORKDIR /app
#COPY --from=build-env /app/Ex8.IdentityServer/out/ .
#ENTRYPOINT ["dotnet", "Ex8.IdentityServer.dll"]