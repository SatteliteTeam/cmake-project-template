#!/usr/bin/make -f

PROJECT_NAME := 'Spherical Flame'
.DEFAULT_GOAL := help

.PHONY: test linting build help generate

BUILD_FOLDER = build

init: ## Setup the enviroment and install needed programms
	## TODO: install cmake also (currently pip failes)
	pip3 install --user conan pytest

test: build gtest pytest ## Run all tests in the project

linting: ## Check/Enforce Code-Style
	echo Need to implement

build: generate ## Build project libraries, applications and tests
	cmake --build $(BUILD_FOLDER)

generate: ## Generate build system
	conan install . -if $(BUILD_FOLDER) --build missing -s build_type=Debug -s compiler.libcxx=libstdc++11
	cmake -S . -B $(BUILD_FOLDER)

clean: ## Clean all build artifacts
	rm -rf $(BUILD_FOLDER)

help: ## Display this help text
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

pytest: ## Run the pytest suit
	pytest

gtest: ## Run Gtest
	build/tests/gtest/bin/sf-gtest


