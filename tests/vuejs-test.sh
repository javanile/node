#!/usr/bin/env bash
set -e

bash="docker compose run -e --rm node sh"
npm="docker compose run -e --rm node npm"

${bash} -c "rm -fr vue node_modules package-lock.json || true"
${npm} install create-vue
${npm} create vue@latest vue -- --ts --vitest --cypress --eslint-with-prettier --force
${bash} -c "cp -fR vue/. . && rm -fr vue"
${npm} install --save-dev @vitest/coverage-v8

${bash} -c "sed 's/\"test:unit\"/\"test:coverage\":\"vitest run --coverage\",%    \"test:unit\"/g' package.json \
              | tr '%' '\n' > package.json.tmp && mv package.json.tmp package.json"

#${bash} -c "chmod 777 -R ."

${npm} run test:coverage
