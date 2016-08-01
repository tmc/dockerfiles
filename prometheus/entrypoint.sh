#!/bin/sh
exec 2>&1
cp /etc/config/prometheus.yml.tmpl /etc/prometheus/prometheus.yml.tmpl || echo 'failed to copy user-supplied template into place'
cat /etc/prometheus/prometheus.yml.tmpl | tmpl > /etc/prometheus/prometheus.yml

cp /etc/config/rules /etc/prometheus/rules || echo 'failed to copy user-supplied rules into place'
cp /etc/config/alerts /etc/prometheus/alerts || echo 'failed to copy user-supplied alert rules into place'

exec prometheus "$@"
