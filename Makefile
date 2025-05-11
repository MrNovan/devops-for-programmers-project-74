dev:
	@docker-compose up

ci:
    @docker-compose -f docker-compose.yml -f docker-compose.test.yml up --abort-on-container-exit --exit-code-from app

build:
	@docker-compose build

test-build:
	@docker-compose -f docker-compose.yml -f docker-compose.test.yml build

push:
	@docker-compose push

clean:
	@docker-compose down