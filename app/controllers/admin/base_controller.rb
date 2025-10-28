# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    layout "admin"
    before_action :authenticate

    private

    def authenticate
      authenticate_or_request_with_http_basic("XField Admin") do |username, password|
        ActiveSupport::SecurityUtils.secure_compare(username, ENV.fetch("ADMIN_USERNAME", "Admin")) &&
          ActiveSupport::SecurityUtils.secure_compare(password, ENV.fetch("ADMIN_PASSWORD", "Team11**"))
      end
    end
  end
end
