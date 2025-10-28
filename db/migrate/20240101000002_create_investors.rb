class CreateInvestors < ActiveRecord::Migration[7.1]
  def change
    create_table :investors do |t|
      t.string :firm_name, null: false
      t.string :contact_name, null: false
      t.string :email, null: false
      t.string :website
      t.text :values, null: false
      t.text :investment_focus, null: false
      t.text :portfolio_highlights
      t.text :request_for_startups, null: false

      t.timestamps
    end
    add_index :investors, :email, unique: true
  end
end
