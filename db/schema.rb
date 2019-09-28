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

ActiveRecord::Schema.define(version: 2019_09_28_125528) do

  create_table "championships", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "fixture_id"
    t.integer "event_type_id"
    t.integer "minute"
    t.integer "player_id"
    t.integer "team_id"
    t.integer "other_player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["fixture_id"], name: "index_events_on_fixture_id"
    t.index ["other_player_id"], name: "index_events_on_other_player_id"
    t.index ["player_id"], name: "index_events_on_player_id"
    t.index ["team_id"], name: "index_events_on_team_id"
  end

  create_table "fixtures", force: :cascade do |t|
    t.string "status"
    t.date "date"
    t.time "time"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.string "final_score"
    t.integer "stadium_id"
    t.integer "season_id"
    t.integer "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_fixtures_on_away_team_id"
    t.index ["home_team_id"], name: "index_fixtures_on_home_team_id"
    t.index ["season_id"], name: "index_fixtures_on_season_id"
    t.index ["stadium_id"], name: "index_fixtures_on_stadium_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "team_id"
    t.integer "fixture_id"
    t.integer "possession"
    t.integer "tot_shoot"
    t.integer "on_target_shoot"
    t.integer "offside"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fixture_id"], name: "index_reports_on_fixture_id"
    t.index ["team_id"], name: "index_reports_on_team_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "year"
    t.integer "championship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_seasons_on_championship_id"
  end

  create_table "stadia", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capacity"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.string "acronym"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
