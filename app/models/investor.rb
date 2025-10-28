# frozen_string_literal: true

class Investor < ApplicationRecord
  validates :firm_name, :contact_name, :email, :values, :investment_focus, :request_for_startups, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
