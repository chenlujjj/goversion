VERSION := $(shell cat VERSION)
BUILD_USER := $(shell whoami)
BUILD_DATE := $(shell date -u '+%Y-%m-%dT%H:%M:%SZ')
GIT_COMMIT := $(shell git rev-list -1 HEAD)
GIT_SHORT_COMMIT := $(shell git rev-parse --short HEAD)
GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)


GOLDFLAGS = "-X main.Version=$(VERSION) -X main.GitBranch=$(GIT_BRANCH) -X main.GitCommit=$(GIT_COMMIT) -X main.BuildUser=$(BUILD_USER) -X main.BuildDate=$(BUILD_DATE)"

build:
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -ldflags $(GOLDFLAGS) -o main