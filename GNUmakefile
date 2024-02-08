default: testacc docs build compress

version = 2.0.6

.PHONY: lint
lint:
	golangci-lint run ./...

# Run acceptance tests
.PHONY: testacc
testacc:
	TF_ACC=1 go test ./... -v $(TESTARGS) -timeout 120m

.PHONY: docs
docs:
	go generate

.PHONY: build
build:
	CGO_ENABLED=0 go build -o terraform-provider-ansible_v$(version)
	CGO_ENABLED=0 GOOS=windows go build -o terraform-provider-ansible_v$(version).exe

.PHONY: compress
compress:
	VERSION=$(version) ./compress.sh
