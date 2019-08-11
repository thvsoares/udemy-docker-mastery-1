docker run -d -p 5000:5000 --name registry `
  --restart unless-stopped `
  -v ${pwd}/registry-data:/var/lib/registry -v ${pwd}/certs:/certs `
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt `
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key `
  registry
