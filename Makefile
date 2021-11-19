widdershins:
	cd documentation && mkdir -p source/includes/partials_admin_metrics
	cd documentation && mkdir -p source/includes/partials_common_apis
	cd documentation && mkdir -p source/includes/partials_open_insurance
	cd documentation && widdershins source/swagger/admin_metrics.yaml -o source/includes/partials_admin_metrics/_admin_metrics.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/status_outage.yaml -o source/includes/partials_common_apis/_status_outage.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_data_channels.yaml -o source/includes/partials_open_insurance/_open_data_channels.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_data_products_services.yaml -o source/includes/partials_open_insurance/_open_data_products_services.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

validate:
	swagger-cli validate documentation/source/swagger/admin_metrics.yaml
	swagger-cli validate documentation/source/swagger/status_outage.yaml
	swagger-cli validate documentation/source/swagger/open_data_channels.yaml
	swagger-cli validate documentation/source/swagger/open_data_products_services.yaml

	spectral lint documentation/source/swagger/admin_metrics.yaml
	spectral lint documentation/source/swagger/status_outage.yaml
	spectral lint documentation/source/swagger/open_data_channels.yaml
	spectral lint documentation/source/swagger/open_data_products_services.yaml
