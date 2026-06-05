install:
	npm ci

test:
	npm run test

lint:
	npx biome check .

lint-fix:
	npx biome check --write .

test-watch:
	npm run test -- --watch

test-preview:
	npm run vitest-preview

update-deps:
	npx ncu -u
