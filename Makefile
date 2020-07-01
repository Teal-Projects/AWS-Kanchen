.DEFAULT_GOAL := test

.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: format pre-commit test output apply apply-terraform

.git/hooks/pre-commit: bin/pre-commit Makefile
	mkdir -p .git/hooks
	cp bin/pre-commit .git/hooks/pre-commit

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: .git/hooks/pre-commit
	rm .git/hooks/pre-commit
	rm -rf .terraform
	bin/aws-vault_env terraform init

format: init
	terraform fmt

pre-commit:
	bin/aws-vault_env terraform validate
	bin/aws-vault_env terraform fmt -check=true

test: format
	bin/aws-vault_env terraform validate
	bin/aws-vault_env terraform plan -refresh=false -lock-timeout=60s

output:
	bin/aws-vault_env terraform output

apply: apply-terraform apply-ansible

apply-terraform:
	bin/aws-vault_env terraform refresh 
	bin/aws-vault_env terraform apply -refresh=false -lock-timeout=60s
	bin/aws-vault_env terraform refresh
