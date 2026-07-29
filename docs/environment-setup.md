# Environment Setup — Running SQL Server on macOS (Apple Silicon)

## Why Docker?

SQL Server doesn't run natively on macOS, and Apple Silicon has no native ARM image,
so we run the official amd64 image under emulation via `--platform linux/amd64`.
Fine for learning; not recommended for production.

## Prerequisites
- Docker Desktop
- Visual Studio Code
- VS Code MSSQL extension

## 1. Verify Docker
\`\`\`bash
docker --version
docker run hello-world
\`\`\`

## 2. Pull the image
\`\`\`bash
docker pull mcr.microsoft.com/mssql/server:2022-latest
\`\`\`

## 3. Run the container
\`\`\`bash
docker run --platform linux/amd64 \
  -e "ACCEPT_EULA=Y" \
  -e "MSSQL_SA_PASSWORD=<YOUR_PASSWORD>" \
  -p 1433:1433 \
  -v mssql-data:/var/opt/mssql \
  --name sqlserver \
  -d mcr.microsoft.com/mssql/server:2022-latest
\`\`\`

## 4. Verify
\`\`\`bash
docker ps
docker logs -f sqlserver
\`\`\`
Look for: `SQL Server is now ready for client connections.`

## 5. Test login from terminal
\`\`\`bash
docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "<YOUR_PASSWORD>" -C
\`\`\`

## 6. Connect from VS Code

| Field | Value |
|---|---|
| Profile name | local-sqlserver-macos |
| Server name | localhost,1433 |
| Trust server certificate | True |
| Authentication type | SQL Login |
| User name | SA |
| Password | <YOUR_PASSWORD> |
| Database name | (blank) |
| Save Password | Yes |

## Daily usage
\`\`\`bash
docker start sqlserver   # start
docker stop sqlserver    # stop
\`\`\`
