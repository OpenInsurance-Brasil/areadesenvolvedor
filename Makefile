widdershins:
	cd documentation && mkdir source/includes/partials_common_apis
	cd documentation && mkdir source/includes/partials_open_insurance
	cd documentation && widdershins source/swagger/open_admin_metrics.yaml -o source/includes/partials_common_apis/_open_admin_metrics.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_data_channels.yaml -o source/includes/partials_open_insurance/_open_data_channels.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_data_status_outage.yaml -o source/includes/partials_common_apis/_open_data_status_outage.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_life_welfare.yaml -o source/includes/partials_open_insurance/_open_life_welfare.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_people.yaml -o source/includes/partials_open_insurance/_open_people.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_price_linked_bonds.yaml -o source/includes/partials_open_insurance/_open_price_linked_bonds.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_residence.yaml -o source/includes/partials_open_insurance/_open_residence.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_vehicle.yaml -o source/includes/partials_open_insurance/_open_vehicle.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
	cd documentation && widdershins source/swagger/open_welfare.yaml -o source/includes/partials_open_insurance/_open_welfare.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

validate:
	swagger-cli validate documentation/source/swagger/open_admin_metrics.yaml
	swagger-cli validate documentation/source/swagger/open_data_channels.yaml
	swagger-cli validate documentation/source/swagger/open_data_status_outage.yaml
	swagger-cli validate documentation/source/swagger/open_life_welfare.yaml
	swagger-cli validate documentation/source/swagger/open_people.yaml
	swagger-cli validate documentation/source/swagger/open_price_linked_bonds.yaml
	swagger-cli validate documentation/source/swagger/open_residence.yaml
	swagger-cli validate documentation/source/swagger/open_vehicle.yaml
	swagger-cli validate documentation/source/swagger/open_welfare.yaml

	spectral lint documentation/source/swagger/open_admin_metrics.yaml
	spectral lint documentation/source/swagger/open_data_channels.yaml
	spectral lint documentation/source/swagger/open_data_status_outage.yaml
	spectral lint documentation/source/swagger/open_life_welfare.yaml
	spectral lint documentation/source/swagger/open_people.yaml
	spectral lint documentation/source/swagger/open_price_linked_bonds.yaml
	spectral lint documentation/source/swagger/open_residence.yaml
	spectral lint documentation/source/swagger/open_vehicle.yaml
	spectral lint documentation/source/swagger/open_welfare.yaml
