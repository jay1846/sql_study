# Troubleshooting

## `dquote>` stuck prompt
Unclosed double quote. Press Ctrl+C, retype the command as one line.
Avoid special characters ($ ! ` " ' \) in your password.

## Login failed for user 'SA'
Test login directly first:
\`\`\`bash
docker exec -it sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "<YOUR_PASSWORD>" -C
\`\`\`
If it still fails, reset the volume:
\`\`\`bash
docker stop sqlserver
docker rm sqlserver
docker volume rm mssql-data
# re-run the docker run command
\`\`\`

## Pre-login handshake / certificate error
Enable "Trust server certificate" = True in the connection profile.

## VS Code shows no run-query option
File opened as Plain Text. Click the language mode (bottom-right) → switch to SQL,
or use Cmd+Shift+P → "MS SQL: Connect".
