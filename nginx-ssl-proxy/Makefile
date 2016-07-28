all: image

PROJECT=$(shell  gcloud config list --format 'value(core.project)' 2>/dev/null)

image:
	docker build -t nginx-ssl-proxy .

release: image
		docker tag -f nginx-ssl-proxy gcr.io/$(PROJECT)/nginx-ssl-proxy
		gcloud docker push gcr.io/$(PROJECT)/nginx-ssl-proxy
