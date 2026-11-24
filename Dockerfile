FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /source
COPY Directory.Build.props ./
COPY src/ ./src/
RUN dotnet publish src/ProcessEngine.Api/ProcessEngine.Api.csproj -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:10.0
WORKDIR /app
COPY --from=build /app ./
EXPOSE 8080
USER app
ENTRYPOINT ["dotnet", "ProcessEngine.Api.dll"]
