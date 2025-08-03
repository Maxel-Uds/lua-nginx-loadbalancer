.PHONY: help

tag=latest
current_dir = $(shell pwd)

help: ## Lista de comandos
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

build: ## Cria a imagem
	@docker build -t lua-load-balancer:test .