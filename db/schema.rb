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

ActiveRecord::Schema.define(version: 2018_08_16_230358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.bigint "user_id"
    t.string "statement"
    t.string "color"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "cards_decks", id: false, force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "deck_id"
    t.index ["card_id"], name: "index_cards_decks_on_card_id"
    t.index ["deck_id"], name: "index_cards_decks_on_deck_id"
  end

  create_table "cards_games", id: false, force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "game_id"
    t.index ["card_id"], name: "index_cards_games_on_card_id"
    t.index ["game_id"], name: "index_cards_games_on_game_id"
  end

  create_table "decks", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_decks_on_user_id"
  end

  create_table "decks_games", id: false, force: :cascade do |t|
    t.bigint "deck_id"
    t.bigint "game_id"
    t.index ["deck_id"], name: "index_decks_games_on_deck_id"
    t.index ["game_id"], name: "index_decks_games_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "used_cards_games", id: false, force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "game_id"
    t.index ["card_id"], name: "index_used_cards_games_on_card_id"
    t.index ["game_id"], name: "index_used_cards_games_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nick"
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
