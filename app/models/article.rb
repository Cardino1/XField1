# frozen_string_literal: true

class Article < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  validates :title, :body, presence: true
  validates :published_at, presence: true, if: :published?

  scope :published, -> { where(status: :published) }
end
