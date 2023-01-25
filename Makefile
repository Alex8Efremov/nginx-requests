SHELL := /bin/bash

.DEFAULT_GOAL := up

DC := docker compose

export COMPOSE_PROJECT_NAME=0-2 0-5 1 2

up: down
	@for i in $(COMPOSE_PROJECT_NAME);do COMPOSE_PROJECT_NAME=$$i docker compose up --build -d ;done

down:
	@for i in $(COMPOSE_PROJECT_NAME);do COMPOSE_PROJECT_NAME=$$i docker compose down;done
