
build:
	@docker compose build
	@docker build --no-cache -t javanile/node:18-alpine 18-alpine

push: build
	git add .
	git commit -m "Update node:18-alpine" || true
	git push
	docker login --username=yafb
	docker push javanile/node:18-alpine

test:
	docker compose run --rm node npm --version

test-vuejs:
	@bash tests/vuejs-test.sh

test-npm-cache: build
	@bash tests/npm-cache-test.sh