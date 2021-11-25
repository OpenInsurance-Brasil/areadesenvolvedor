FROM ruby:2.6-slim

VOLUME build
VOLUME source

EXPOSE 4567

COPY Gemfile .
COPY Gemfile.lock .

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        git \
        nodejs \
        npm \
    && gem install bundler \
    && bundle install \
    && npm install -g widdershins

COPY . .

RUN chmod +x /slate.sh

RUN mkdir -p source/includes/partials_admin_metrics \
    && mkdir -p source/includes/partials_common_apis \
    && mkdir -p source/includes/partials_open_insurance

RUN widdershins source/swagger/admin_metrics.yaml -o source/includes/partials_admin_metrics/_admin_metrics.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet \
    && widdershins source/swagger/status_outage.yaml -o source/includes/partials_common_apis/_status_outage.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet \
    && widdershins source/swagger/open_data_channels.yaml -o source/includes/partials_open_insurance/_open_data_channels.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet \
    && widdershins source/swagger/open_data_products_services.yaml -o source/includes/partials_open_insurance/_open_data_products_services.md.erb --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

RUN bundle install

ENTRYPOINT ["/slate.sh"]
CMD ["build"]
