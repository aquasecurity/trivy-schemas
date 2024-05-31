SCHEMA_CONFIG_FILE=./config/config.yaml
SCHEMAS=dockerfile kubernetes cloud rbac
OUT_DIRECTORY=out

generate-html:
	@tmpdep=`mktemp -d`; \
	trap 'rm -rf $$tmpdep' EXIT; \
	for schema in $(SCHEMAS); do \
		wget -q -O $$tmpdep/$$schema.json https://raw.githubusercontent.com/aquasecurity/trivy/main/pkg/iac/rego/schemas/$$schema.json; \
		mkdir -p $(OUT_DIRECTORY)/$$schema; \
		generate-schema-doc --config-file $(SCHEMA_CONFIG_FILE) $$tmpdep/$$schema.json $(OUT_DIRECTORY)/$$schema; \
	done