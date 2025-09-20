FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /source

# Copia o .csproj da subpasta
COPY RankingSuico/RankingSuico.csproj . 
RUN dotnet restore

# Copia todo o projeto da subpasta
COPY RankingSuico/. . 
RUN dotnet publish -c Release -o /app/publish --no-restore

# Estágio final
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 8080
ENTRYPOINT ["dotnet", "RankingSuico.dll"]
