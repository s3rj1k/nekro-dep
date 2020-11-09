GO_BIN ?= go
ENV_BIN ?= env

export PATH := $(PATH):/usr/local/go/bin

CWD := $(shell pwd)

all: build

build:
	mkdir -p "$(CWD)/bin"
	cd "$(CWD)/cmd/digest" && $(ENV_BIN) CGO_ENABLED=0 GOOS=linux $(GO_BIN) build -ldflags '-s -w -extldflags "-static"' -o "$(CWD)/bin/dep-digest" -v
