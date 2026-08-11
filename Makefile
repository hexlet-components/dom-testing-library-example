install:
	pnpm install --frozen-lockfile

test:
	pnpm run test

lint:
	pnpm --silent run lint
	pnpm --silent run format:check

lint-fix:
	pnpm --silent run lint:fix

test-watch:
	pnpm run test -- --watch

test-preview:
	pnpm run vitest-preview

update-deps:
	pnpm exec ncu -u
