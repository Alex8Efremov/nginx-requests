SHELL := /bin/bash

DEFAULT_GOAL := up

DC := docker compose

up: down
	@$(DC) up --build -d

down:
	@$(DC) down
