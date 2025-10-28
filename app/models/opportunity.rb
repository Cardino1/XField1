# frozen_string_literal: true

class Opportunity < ApplicationRecord
  enum status: { pending: 0, approved: 1, rejected: 2 }

  CATEGORIES = [
    "Jobs",
    "Research",
    "Open Source",
    "Co-Founder"
  ].freeze

  validates :category, inclusion: { in: CATEGORIES }
  validates :title, :full_name, :organization, :description, presence: true
  validates :link, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_blank: true }

  scope :categories, -> { CATEGORIES }
end
