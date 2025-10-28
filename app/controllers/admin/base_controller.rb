# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    before_action :authenticate
    layout "admin"

    private

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        ActiveSupport::SecurityUtils.secure_compare(username, "Admin") &&
          ActiveSupport::SecurityUtils.secure_compare(password, "Team11**")
      end
    end
  end
end
