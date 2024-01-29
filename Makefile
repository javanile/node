
build:
	docker build -t javanile/node:18-alpine 18-alpine

push: build
	docker login --username=yafb
	docker push javanile/node:18-alpine

test:
	docker compose run --rm node npm --version

