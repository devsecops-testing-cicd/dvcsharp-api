FROM mcr.microsoft.com/dotnet/aspnet:2.0

ENV ASPNETCORE_URLS=http://0.0.0.0:5000

COPY . /app

WORKDIR /app

RUN dotnet restore
RUN dotnet ef database update

EXPOSE 5000

CMD ["dotnet", "watch", "run"]
