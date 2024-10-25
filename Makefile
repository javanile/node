
build:
	@docker compose build
	@docker build --no-cache -t javanile/node:20-bookworm-slim 20-bookworm-slim

push: build
	git add .
	git commit -m "Update node:20-bookworm-slim" || true
	git push
	docker login --username=yafb
	docker push javanile/node:20-bookworm-slim

test:
	docker compose run --rm node npm --version

test-vuejs:
	@bash tests/vuejs-test.sh

test-npm-cache: build
	@bash tests/npm-cache-test.sh