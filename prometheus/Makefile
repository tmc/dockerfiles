all: image

PROJECT=$(shell  gcloud config list --format 'value(core.project)' 2>/dev/null)

image:
	docker build -t prometheus .

release: image
		docker tag -f prometheus gcr.io/$(PROJECT)/prometheus
		gcloud docker push gcr.io/$(PROJECT)/prometheus
