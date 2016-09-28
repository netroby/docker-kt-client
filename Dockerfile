FROM alpine
RUN apk add -U curl ; \
        curl -L -O https://github.com/xtaci/kcptun/releases/download/v20160922/kcptun-linux-amd64-20160922.tar.gz; \
        tar zxvf kcptun-linux-amd64-20160922.tar.gz; \
        rm *.gz; \
        rm server*; \
        mv client_linux_amd64 /bin/client;\
        apk del curl ;

CMD ["client"]
