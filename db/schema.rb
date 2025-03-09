# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_09_130239) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "coins", force: :cascade do |t|
    t.string "market_code"
    t.string "currency"
    t.string "korean_name"
    t.string "english_name"
    t.decimal "prev_closing_price"
    t.decimal "opening_price"
    t.decimal "high_price"
    t.decimal "low_price"
    t.decimal "trade_price"
    t.decimal "signed_change_price"
    t.decimal "signed_change_rate"
    t.string "trade_datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discussion_room_posts", force: :cascade do |t|
    t.string "title"
    t.string "user_name"
    t.string "password"
    t.boolean "is_member"
    t.string "coin_code"
    t.string "coin_name"
    t.integer "views"
    t.integer "likes"
    t.string "ip"
    t.string "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_discussion_room_posts_on_user_id"
  end

  create_table "discussion_room_replies", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "ip"
    t.string "timestamp"
    t.integer "user_id"
    t.integer "discussion_room_post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["discussion_room_post_id"], name: "index_discussion_room_replies_on_discussion_room_post_id"
    t.index ["user_id"], name: "index_discussion_room_replies_on_user_id"
  end

  create_table "discussion_room_reply_replies", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "ip"
    t.string "timestamp"
    t.integer "user_id"
    t.integer "discussion_room_reply_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["discussion_room_reply_id"], name: "idx_on_discussion_room_reply_id_a17962e990"
    t.index ["user_id"], name: "index_discussion_room_reply_replies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "discussion_room_posts", "users"
  add_foreign_key "discussion_room_replies", "discussion_room_posts"
  add_foreign_key "discussion_room_replies", "users"
  add_foreign_key "discussion_room_reply_replies", "discussion_room_replies"
  add_foreign_key "discussion_room_reply_replies", "users"
end
