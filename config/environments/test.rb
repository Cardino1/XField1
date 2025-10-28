# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = false

  config.consider_all_requests_local = true

  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []
  config.active_support.deprecation = :stderr

  config.action_controller.allow_forgery_protection = false
  config.action_mailer.perform_caching = false

  config.active_storage.service = :test
end
