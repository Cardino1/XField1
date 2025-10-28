class CreateOpportunities < ActiveRecord::Migration[7.1]
  def change
    create_table :opportunities do |t|
      t.string :category, null: false
      t.string :title, null: false
      t.string :full_name, null: false
      t.string :organization, null: false
      t.text :description, null: false
      t.string :link
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :opportunities, :category
    add_index :opportunities, :status
  end
end
