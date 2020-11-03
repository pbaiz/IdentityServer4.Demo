# Identity Server 4 Demo

Demo server to help debug


# Quick Start

Build and publish the project. In MacOS this is (adjust to your osx version): 

```
dotnet publish IdentityServer4Demo.sln -c Release --self-contained -r osx.10.15-x64 -o publish
```

Once that project is restored, you can start by:

```
dotnet publish/IdentityServer4Demo.dll
```



# Troubleshouting

- My MacOS Version 10.15.7 (19H2) - Catalina, which means the version to add is:
osx.10.15-x64


- Specific frameworks to use:
3.1.9 at [/usr/local/share/dotnet/shared/Microsoft.NETCore.App]


# Good links

- https://docs.microsoft.com/en-us/dotnet/core/rid-catalog

- https://stackoverflow.com/questions/43344089/unable-to-build-publish-os-x-self-contained-net-core-executable

VERY IMPORTANT
- https://devcenter.heroku.com/articles/ssl-certificate-self


docker build -t exate-identity-server:latest . -f Ex8.IdentityServer/Dockerfile

docker build -t exate-identity-server:latest .


docker run -d -p 80:80 -p 443:443 exate-identity-server:latest

docker run -d -p 80:80 -p 443:443 oneharbor.sbox.exate.co/exate-jpm/exateidentityserver:1.4.1

dotnet publish IdentityServer4Demo.sln -c Release --self-contained -r osx.10.15-x64 -o publish


docker run -d -p 80:80 -p 443:443 --env-file env.list exate-identity-server:latest  

https://medium.com/@betz.mark/ten-tips-for-debugging-docker-containers-cde4da841a1d 



docker exec -it <docker id> /bin/sh