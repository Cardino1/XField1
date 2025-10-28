# frozen_string_literal: true

class Article < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :featured, -> { where(featured: true) }

  validates :title, :excerpt, :body, :author, :published_at, presence: true

  before_validation :set_published_flag

  private

  def set_published_flag
    self.published = true if published.nil?
  end
end
