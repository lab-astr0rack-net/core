all: apply
clean: destroy

apply:
	scripts/local.sh apply
destroy:
	scripts/local.sh destroy
plan:
	scripts/local.sh plan
init:
	scripts/local.sh init -backend-config="conn_str=$${PG_CONN_STR}"
fmt:
	terraform fmt
