SCHEMA_CONFIG_FILE=./config/config.yaml
PATH_TO_SCHEMAS=./defsec/pkg/rego/schemas
SCHEMAS=dockerfile kubernetes cloud rbac
OUT_DIRECTORY=out

generate-html:
	@for schema in $(SCHEMAS); do \
		mkdir -p out/$$schema; \
		generate-schema-doc --config-file $(SCHEMA_CONFIG_FILE) $(PATH_TO_SCHEMAS)/$$schema.json $(OUT_DIRECTORY)/$$schema; \
	done

clone-repo:
	git clone https://github.com/aquasecurity/defsec
