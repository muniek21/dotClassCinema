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

ActiveRecord::Schema.define(version: 20151025082953) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
  end

  create_table "categorizings", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "category_id"
  end

  add_index "categorizings", ["category_id"], name: "index_categorizings_on_category_id"
  add_index "categorizings", ["movie_id"], name: "index_categorizings_on_movie_id"

  create_table "comments", force: :cascade do |t|
    t.string  "title"
    t.string  "content"
    t.integer "user_id"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "url"
    t.string   "author"
    t.string   "image_url"
    t.integer  "rating"
    t.boolean  "published"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "movies", ["user_id"], name: "index_movies_on_user_id"

  create_table "playlists", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "playlists", ["movie_id"], name: "index_playlists_on_movie_id"
  add_index "playlists", ["user_id"], name: "index_playlists_on_user_id"

  create_table "taggings", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "tag_id"
  end

  add_index "taggings", ["movie_id"], name: "index_taggings_on_movie_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "password"
    t.string   "confirm_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
