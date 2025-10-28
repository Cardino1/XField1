# frozen_string_literal: true

class Opportunity < ApplicationRecord
  enum :opportunity_type, {
    jobs: "jobs",
    research: "research",
    open_source: "open_source",
    co_founder: "co_founder"
  }

  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }
  scope :latest, -> { order(created_at: :desc) }

  validates :opportunity_type, :title, :full_name, :organization, :description, presence: true
  validates :link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_blank: true

  before_validation :default_approval

  private

  def default_approval
    self.approved = false if approved.nil?
  end
end
