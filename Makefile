all:
	generate-schema-doc --config-file ./config/config.json  ./schemas/dockerfile.json out/dockerfile
	generate-schema-doc --config-file ./config/config.json  ./schemas/kubernetes.json out/kubernetes
	generate-schema-doc --config-file ./config/config.json  ./schemas/cloud.json out/cloud
	generate-schema-doc --config-file ./config/config.json  ./schemas/rbac.json out/rbac

