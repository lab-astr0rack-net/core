all: init apply
clean: destroy

apply:
	scripts/local.sh apply
destroy:
	scripts/local.sh destroy
plan:
	scripts/local.sh plan
init:
	scripts/local.sh init
fmt:
	terraform fmt
