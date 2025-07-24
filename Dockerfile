# Imagem de runtime para .NET 8
FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS runtime
WORKDIR /app

# Copia o build gerado no CodeBuild para dentro da imagem
COPY ./out ./

# Expõe a porta da aplicação (ajuste se sua app usar outra porta)
EXPOSE 80

# Comando para rodar sua aplicação ASP.NET Core
ENTRYPOINT ["dotnet", "MeuSite.dll"]
