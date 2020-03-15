#!/usr/bin/make -f

PROJECT_NAME := 'Spherical Flame'
.DEFAULT_GOAL := help

.PHONY: test linting build prepare-deploy view-logs help generate
.PHONY: env-start env-stop env-recreate migrate bash shell

test: ## Run test suite in project's main container
	echo Need to implement

linting: ## Check/Enforce Code-Style
	echo Need to implement

build: generate ## Build project libraries and applications
	cmake --build build

generate: ## Generate build system
	cmake -S . -B build

clean: ## Clean all build artifacts
	rm -rf build

help: ## Display this help text
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


