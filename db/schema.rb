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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161231002702) do
=======
ActiveRecord::Schema.define(version: 20161230154804) do
>>>>>>> 66936e0a5ba954489e319a5218e8359bee28694e

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.integer "show_id"
<<<<<<< HEAD
    t.string  "catchphrase"
    t.integer "actor_id"
=======
>>>>>>> 66936e0a5ba954489e319a5218e8359bee28694e
  end

  create_table "networks", force: :cascade do |t|
    t.string  "call_letters"
    t.integer "channel"
  end

  create_table "shows", force: :cascade do |t|
    t.string  "name"
    t.integer "network_id"
<<<<<<< HEAD
    t.string  "day"
    t.string  "season"
    t.string  "genre"
=======
>>>>>>> 66936e0a5ba954489e319a5218e8359bee28694e
  end

end
