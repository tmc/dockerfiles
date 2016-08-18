PROJECT ?= $(shell gcloud config list --format 'value(core.project)' 2>/dev/null)
REGISTRY ?= gcr.io

all: image

image:
	docker build -t nginx-ssl-proxy .

release: image
	docker tag -f nginx-ssl-proxy $(REGISTRY)/$(PROJECT)/nginx-ssl-proxy
	gcloud docker push $(REGISTRY)/$(PROJECT)/nginx-ssl-proxy
