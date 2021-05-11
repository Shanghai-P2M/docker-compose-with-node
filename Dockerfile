FROM docker:20.10.10

# You cannot follow docker's offcial guideline to install docker compose. It
# is not compatibility with alpine. Please following alpine's guideline
# (https://wiki.alpinelinux.org/wiki/Docker#Docker_Compose) to install it.
RUN apk add --no-cache curl git openssl ca-certificates 'nodejs==14.16.1' yarn py-pip gettext && \
    pip install 'docker-compose==1.29.2'
