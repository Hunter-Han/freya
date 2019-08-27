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

ActiveRecord::Schema.define(version: 2019_08_27_092939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_at_vendors", force: :cascade do |t|
    t.bigint "vendor_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_at_vendors_on_ingredient_id"
    t.index ["vendor_id"], name: "index_ingredient_at_vendors_on_vendor_id"
  end

  create_table "ingredient_seasons", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.bigint "ingredient_id"
    t.bigint "county_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_ingredient_seasons_on_county_id"
    t.index ["ingredient_id"], name: "index_ingredient_seasons_on_ingredient_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "food_group_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumbnail_picture"
    t.string "background_picture"
    t.string "binomial"
    t.index ["food_group_id"], name: "index_ingredients_on_food_group_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.float "hours_preparation"
    t.text "description"
    t.text "instructions"
    t.text "shopping_list"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumbnail_picture"
    t.integer "serves"
    t.index ["ingredient_id"], name: "index_recipes_on_ingredient_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "vendor_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["vendor_id"], name: "index_reviews_on_vendor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "diet"
    t.string "picture"
    t.string "username"
    t.float "longitude"
    t.float "latitude"
    t.bigint "county_id"
    t.index ["county_id"], name: "index_users_on_county_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.bigint "county_id"
    t.text "description"
    t.float "longitude"
    t.float "latitude"
    t.integer "price_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["county_id"], name: "index_vendors_on_county_id"
  end

  add_foreign_key "ingredient_at_vendors", "ingredients"
  add_foreign_key "ingredient_at_vendors", "vendors"
  add_foreign_key "ingredient_seasons", "counties"
  add_foreign_key "ingredient_seasons", "ingredients"
  add_foreign_key "ingredients", "food_groups"
  add_foreign_key "recipes", "ingredients"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "vendors"
  add_foreign_key "vendors", "counties"
end
