nginx-ssl-proxy
===============

upstream: Environment Variable: `TARGET_SERVICE`

secrets:

* `ssl_certificate` - `/etc/secrets/cert.pem;`
* `ssl_certificate_key` - `/etc/secrets/key.pem;`
* `ssl_dhparam` - `/etc/secrets/dhparam;`
* `auth_basic_user_file` - `/etc/secrets/htpasswd;`

Example:

```sh
$ openssl dhparam -out dhparam 2048
$ kubectl create secret generic example-proxy-secret-1 --from-file=cert.key --from-file=key.pem --from-file=dhparam --from-file=htpasswd
```

