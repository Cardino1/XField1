class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author
      t.text :excerpt
      t.text :body, null: false
      t.string :cover_image_url
      t.integer :status, null: false, default: 0
      t.datetime :published_at

      t.timestamps
    end
    add_index :articles, :status
    add_index :articles, :published_at
  end
end
