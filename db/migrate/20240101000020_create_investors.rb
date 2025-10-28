# frozen_string_literal: true

class CreateInvestors < ActiveRecord::Migration[7.1]
  def change
    create_table :investors do |t|
      t.string :name, null: false
      t.text :values, null: false
      t.text :focus, null: false
      t.text :portfolio_highlights
      t.text :request_for_startups, null: false
      t.string :website
      t.boolean :featured, null: false, default: true

      t.timestamps
    end
  end
end
