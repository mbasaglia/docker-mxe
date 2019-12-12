IMAGE_NAME=mattbas/mxe-qt5

.PHONY: all push

all:
	docker build -t $(IMAGE_NAME) .

push: all
	docker push $(IMAGE_NAME)
