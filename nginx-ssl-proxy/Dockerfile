FROM nginx:1.11.1-alpine

RUN apk add --no-cache curl

ENV TMPL_VERSION v1.1
ENV TMPL_CHECKSUM 7e24b4226888f21a3494919eebb446141ca99eaa
RUN curl -LOk "https://github.com/tmc/tmpl/releases/download/${TMPL_VERSION}/tmpl-${TMPL_VERSION}-linux-amd64.tar.gz" && \
    echo "${TMPL_CHECKSUM}  tmpl-${TMPL_VERSION}-linux-amd64.tar.gz" | sha1sum -c - && \
    tar xzvf "tmpl-${TMPL_VERSION}-linux-amd64.tar.gz" && \
    rm tmpl-${TMPL_VERSION}-linux-amd64.tar.gz
RUN mv tmpl-${TMPL_VERSION}-linux-amd64 /usr/bin/tmpl

ADD entrypoint.sh /usr/bin/
ADD nginx.conf.tmpl /etc/nginx/nginx.conf.tmpl

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 443 80
