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

- https://stackoverflow.com/questions/43344089/unable-to-build-publish-os-x-self-contained-net-core-executable