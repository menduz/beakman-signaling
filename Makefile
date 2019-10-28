PROTOC ?= protoc

CWD = $(shell pwd)

build:
	./node_modules/.bin/tsc -p tsconfig.json
	npm pack

watch:
	./node_modules/.bin/tsc -p tsconfig.json --watch

start: build
	node ./src/index.js

.PHONY: build