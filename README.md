# my-registry

[https://docs.docker.com/registry/insecure/#using-self-signed-certificates](https://docs.docker.com/registry/insecure/#using-self-signed-certificates)

[https://docs.docker.com/registry/deploying/#running-a-domain-registry](https://docs.docker.com/registry/deploying/#running-a-domain-registry)

### 生成证书

````bash
$ openssl genrsa  -out privatekey.pem 2048
$ openssl req -new -sha256 -key privatekey.pem -out certrequest.csr
$ openssl x509 -req -in certrequest.csr -signkey privatekey.pem -out certificate.pem -sha256
````

### 生成密码文件

````bash
$ htpasswd -cbB htpasswd username password
````
