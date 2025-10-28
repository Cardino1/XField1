# frozen_string_literal: true

ActiveRecord::Schema[7.1].define(version: 20240101000003) do
  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.string "author"
    t.text "excerpt"
    t.text "body", null: false
    t.string "cover_image_url"
    t.integer "status", default: 0, null: false
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["published_at"], name: "index_articles_on_published_at"
    t.index ["status"], name: "index_articles_on_status"
  end

  create_table "investors", force: :cascade do |t|
    t.string "firm_name", null: false
    t.string "contact_name", null: false
    t.string "email", null: false
    t.string "website"
    t.text "values", null: false
    t.text "investment_focus", null: false
    t.text "portfolio_highlights"
    t.text "request_for_startups", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_investors_on_email", unique: true
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "category", null: false
    t.string "title", null: false
    t.string "full_name", null: false
    t.string "organization", null: false
    t.text "description", null: false
    t.string "link"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_opportunities_on_category"
    t.index ["status"], name: "index_opportunities_on_status"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_subscriptions_on_email", unique: true
  end
end
