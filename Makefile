#!/bin/bash
# Author: Amirhossein Pooladvand

include .env
export

# Colors
#	Red = '\033[91m'
#	Green = '\033[92m'
#	Blue = '\033[94m'
#	Cyan = '\033[96m'
#	White = '\033[97m'
#	Yellow = '\033[93m'
#	Magenta = '\033[95m'
#	Grey = '\033[90m'
#	Black = '\033[90m'
#	Default = '\033[99m'
#	EOL => End of Line = '\033[0m'

PROJECT_NAME = ${PROJECT_NAME}

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Builds the docker compose.yml file
	docker compose build

rebuild: ## Rebuilds docker compose.yml
	docker compose up --build --force-recreate --remove-orphans

up: ## Create and start containers
	docker compose up --remove-orphans

watch: ## Create, start and detach containers
	docker compose up -d --remove-orphans

down: ## Stop and remove resources
	docker compose down

stop: ## Stop all running project containers
	@docker container stop $(docker ps -q -f ancestor=${PROJECT_NAME})

ps: ## List project containers
	@docker compose ps -f name=${PROJECT_NAME}

login: ## Login into a specific container
	docker exec -it $(PROJECT_NAME) ash;