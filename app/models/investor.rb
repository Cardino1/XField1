# frozen_string_literal: true

class Investor < ApplicationRecord
  scope :featured, -> { where(featured: true) }

  validates :name, :values, :focus, :request_for_startups, presence: true
  validates :website, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_blank: true

  before_validation :default_featured

  private

  def default_featured
    self.featured = true if featured.nil?
  end
end
