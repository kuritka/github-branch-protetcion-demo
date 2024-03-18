ifneq ($(wildcard ./.env),)
	include .env
	export
endif

lint:
	@echo "Running tflint"
	tflint -f compact --recursive

	@echo "Running tfsec"
	tfsec --ignore-hcl-errors

	@echo "Running terraform"
	terraform fmt
	terraform init
	terraform validate

plan:
	terraform init
	terraform plan -var-file=terraform.tfvars -out=out.tfplan
