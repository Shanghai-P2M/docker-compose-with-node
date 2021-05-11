FROM docker:20.10

# You cannot follow docker's offcial guideline to install docker compose. It
# is not compatibility with alpine. Please following alpine's guideline
# (https://wiki.alpinelinux.org/wiki/Docker#Docker_Compose) to install it.

#APK image
    #Ali image 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g'
    #University of science and technology of China  's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g'

#PIP image
    #Alicloud  https://mirrors.aliyun.com/pypi/simple/
    #University of science and technology of China https://pypi.mirrors.ustc.edu.cn/simple/
    #Douban https://pypi.douban.com/simple/
    #Tsinghua University https://pypi.tuna.tsinghua.edu.cn/simple/
    #University of science and technology of China https://pypi.mirrors.ustc.edu.cn/simple/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache curl git openssl ca-certificates nodejs=14.16.1-r1 yarn py-pip gettext \
    docker-compose=1.27.4-r0
