IMAGE_NAME=mattbas/mxe-qt5

.PHONY: all push shell

all:
	docker build -t $(IMAGE_NAME) .

push: all
	docker push $(IMAGE_NAME)

shell:
	docker run -it $(IMAGE_NAME) bash
