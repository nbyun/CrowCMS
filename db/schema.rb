# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150202132655) do

  create_table "article_categories", force: :cascade do |t|
    t.string   "ancestry",    limit: 255
    t.string   "title",       limit: 255
    t.boolean  "is_article",  limit: 1,   default: true
    t.boolean  "is_thumb",    limit: 1,   default: false
    t.boolean  "is_file",     limit: 1,   default: false
    t.boolean  "is_abstract", limit: 1,   default: false
    t.boolean  "is_carousel", limit: 1,   default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.integer  "article_category_id", limit: 4
    t.string   "author",              limit: 255,   default: "管理员"
    t.boolean  "is_recommand",        limit: 1,     default: false
    t.boolean  "is_carousel",         limit: 1,     default: false
    t.boolean  "is_mark",             limit: 1,     default: false
    t.text     "content",             limit: 65535
    t.string   "abstract",            limit: 255
    t.integer  "hits",                limit: 4,     default: 0
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "thumb_file_name",     limit: 255
    t.string   "thumb_content_type",  limit: 255
    t.integer  "thumb_file_size",     limit: 4
    t.datetime "thumb_updated_at"
    t.string   "file_file_name",      limit: 255
    t.string   "file_content_type",   limit: 255
    t.integer  "file_file_size",      limit: 4
    t.datetime "file_updated_at"
  end

  add_index "articles", ["article_category_id"], name: "index_articles_on_article_category_id", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  add_foreign_key "articles", "article_categories"
end