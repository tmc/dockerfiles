FROM alpine

RUN apk add --no-cache curl

ENV PROMETHEUS_VERSION 1.0.1
ENV PROMETHEUS_CHECKSUM c05355bd1f1891df8fab71825fcf7bb63593f724
RUN curl -LO "https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz" && \
    echo "${PROMETHEUS_CHECKSUM}  prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz" | sha1sum -c - && \
    tar xvf "prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz" && \
	rm prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz
RUN mv prometheus-${PROMETHEUS_VERSION}.linux-amd64 /prometheus
ENV PATH $PATH:/prometheus

ENV TMPL_VERSION v1.0
ENV TMPL_CHECKSUM 97fd6232a25005420cfa2c228f1b79eacc98a176
RUN curl -LO "https://github.com/tmc/tmpl/releases/download/${TMPL_VERSION}/tmpl_linux_amd64.tar.gz" && \
    echo "${TMPL_CHECKSUM}  tmpl_linux_amd64.tar.gz" | sha1sum -c - && \
    tar xvf "tmpl_linux_amd64.tar.gz" && \
	rm tmpl_linux_amd64.tar.gz
RUN mv tmpl_linux_amd64 /usr/bin/tmpl

ADD ./entrypoint.sh /usr/bin/

ADD prometheus.yml.tmpl /etc/prometheus/

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 9090
