install:
	npm ci

test:
	npm run test

lint:
	npm run lint .

test-watch:
	npm run test -- --watch

test-preview:
	npm run vitest-preview

update-deps:
	npx ncu -u
