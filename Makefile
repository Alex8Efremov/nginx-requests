SHELL := /bin/bash

DEFAULT_GOAL := up
export DOMAIN=example.local

DC := docker compose

up: down
	@$(DC) up --build -d

down:
	@$(DC) down
