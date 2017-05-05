FROM registry:latest

COPY ./htpasswd /auth/htpasswd
COPY ./certificate.pem /certs/certificate.pem
COPY ./privatekey.pem /certs/privatekey.pem

