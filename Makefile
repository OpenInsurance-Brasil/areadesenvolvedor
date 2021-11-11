widdershins:
	cd documentation && widdershins "source/swagger/open_data_status_outage.yaml" -o source/includes/partials_common_apis/_get_status_and_outages.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins "source/swagger/open_data_channels.yaml" "source/swagger/open_data_products_services.yaml" -o source/includes/partials_open_insurance/_open_insurance_fase1_apis.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

validate:
	swagger-cli validate documentation/source/swagger/open_data_status_outage.yaml
	swagger-cli validate documentation/source/swagger/open_data_channels.yaml
	swagger-cli validate documentation/source/swagger/open_data_products_services.yaml

	spectral lint documentation/source/swagger/open_data_status_outage.yaml
	spectral lint documentation/source/swagger/open_data_channels.yaml
	spectral lint documentation/source/swagger/open_data_products_services.yaml
