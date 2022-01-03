test: eslint typecheck prettier

eslint:
	yarn eslint --cache src

deps:
	yarn install

typecheck:
	yarn tsc -p .

prettier:
	yarn prettier -l '$(CURDIR)/src/**/*.ts{,x}'

prettier/write:
	yarn prettier -l --write '$(CURDIR)/src/**/*.ts{,x}'
