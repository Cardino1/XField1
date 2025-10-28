# frozen_string_literal: true

ActiveRecord::Schema[7.1].define(version: 20240101000030) do
  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.string "excerpt", null: false
    t.text "body", null: false
    t.string "author", null: false
    t.date "published_at", null: false
    t.boolean "published", default: true, null: false
    t.boolean "featured", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.string "name", null: false
    t.text "values", null: false
    t.text "focus", null: false
    t.text "portfolio_highlights"
    t.text "request_for_startups", null: false
    t.string "website"
    t.boolean "featured", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "opportunity_type", null: false
    t.string "title", null: false
    t.string "full_name", null: false
    t.string "organization", null: false
    t.text "description", null: false
    t.string "link"
    t.boolean "approved", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end
end
