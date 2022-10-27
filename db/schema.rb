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

ActiveRecord::Schema[7.0].define(version: 2022_10_27_135947) do
  create_table "articles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.bigint "fournisseur_id"
    t.integer "prix"
    t.string "categorie"
    t.string "cover_url"
    t.string "image_url"
    t.index ["fournisseur_id"], name: "index_articles_on_fournisseur_id"
  end

  create_table "fournisseurs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "provenance"
    t.string "telephone"
    t.string "email"
    t.string "logo_url"
  end

  create_table "stocks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "article_id"
    t.integer "xs"
    t.integer "s"
    t.integer "m"
    t.integer "l"
    t.integer "xl"
    t.index ["article_id"], name: "index_stocks_on_article_id"
  end

  add_foreign_key "articles", "fournisseurs"
  add_foreign_key "stocks", "articles"
end
