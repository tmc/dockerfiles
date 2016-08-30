nginx-ssl-proxy
===============

upstream: Environment Variable: `TARGET_SERVICE`

Expects a secret mounted at `/etc/secrets`:

* `ssl_certificate` - `/etc/secrets/cert.pem;`
* `ssl_certificate_key` - `/etc/secrets/key.pem;`
* `ssl_dhparam` - `/etc/secrets/dhparam;`
* `auth_basic_user_file` - `/etc/secrets/htpasswd;`

Example to generate secrets:

```sh
$ htpasswd -bc htpasswd ed sn0
$ openssl dhparam -out dhparam 2048 -dsaparam
$ openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -nodes
$ kubectl create secret generic example-proxy-secret-1 --from-file=cert.pem --from-file=key.pem --from-file=dhparam --from-file=htpasswd
```

