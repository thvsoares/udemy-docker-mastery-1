mkdir certs
$certsPath = "${$Env:ProgramData}\Docker\certs.d\127.0.0.1"
wsl openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key -x509 -days 365 -out certs/domain.crt
mkdir $certsPath
Copy-Item -Path .\certs\domain.crt -Destination "$certsPath\ca.crt"
