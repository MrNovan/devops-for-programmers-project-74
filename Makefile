#Makefile
dev:
    docker-compose up

test:
    docker-compose -f docker-compose.yml -f docker-compose.test.yml up --abort-on-container-exit --exit-code-from app

ci: test

build:
    docker-compose build

test-build:
    docker-compose -f docker-compose.yml -f docker-compose.test.yml build

push:
    docker-compose push

clean:
    docker-compose down