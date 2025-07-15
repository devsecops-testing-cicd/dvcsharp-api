FROM cgr.dev/chainguard/dotnet-runtime

ENV ASPNETCORE_URLS=http://0.0.0.0:5000

COPY . /app

WORKDIR /app

RUN dotnet restore \
    && dotnet ef database update

EXPOSE 5000

CMD ["dotnet", "watch", "run"]
