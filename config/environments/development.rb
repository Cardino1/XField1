# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.enable_reloading = true
  config.consider_all_requests_local = true
  config.server_timing = true
  config.cache_classes = false
  config.eager_load = false
  config.assets.debug = true
  config.assets.quiet = true
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
end
