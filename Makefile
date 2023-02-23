build:
	docker compose build

bash:
	docker compose run --rm go bash

install-tools:
	go install github.com/99designs/gqlgen@v0.17.23
