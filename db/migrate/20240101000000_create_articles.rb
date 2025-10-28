# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :excerpt, null: false
      t.text :body, null: false
      t.string :author, null: false
      t.date :published_at, null: false
      t.boolean :published, null: false, default: true
      t.boolean :featured, null: false, default: false

      t.timestamps
    end
  end
end
