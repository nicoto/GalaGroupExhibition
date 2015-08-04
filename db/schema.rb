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

ActiveRecord::Schema.define(version: 20150804183803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.integer  "user_id"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "biography"
    t.string   "website_url"
    t.string   "portrait_url"
    t.date     "birthday"
    t.text     "artist_statement"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "artworks", force: true do |t|
    t.integer  "artist_id"
    t.string   "title"
    t.text     "work_statement"
    t.string   "materials"
    t.string   "technique"
    t.date     "year_of_make"
    t.string   "thumbnail_url"
    t.string   "image1_url"
    t.string   "image2_url"
    t.string   "image3_url"
    t.string   "detail_url"
    t.float    "height"
    t.float    "width"
    t.float    "depth"
    t.boolean  "framed"
    t.boolean  "sold",           default: false
    t.float    "reserve_price"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "artworks", ["artist_id"], name: "index_artworks_on_artist_id", using: :btree

  create_table "auctions", force: true do |t|
    t.integer  "exhibition_id"
    t.integer  "artwork_id"
    t.float    "starting_price"
    t.float    "sale_price"
    t.datetime "starting_time"
    t.datetime "ending_time"
    t.string   "timezone"
  end

  create_table "awards", force: true do |t|
    t.integer "vote_id"
    t.integer "estimation_score"
    t.text    "critique"
  end

  add_index "awards", ["vote_id"], name: "index_awards_on_vote_id", using: :btree

  create_table "bids", force: true do |t|
    t.integer "participant_id"
    t.integer "auction_id"
    t.string  "currency"
    t.float   "offer"
  end

  create_table "estimation_criteria", force: true do |t|
    t.integer  "exhibition_id"
    t.integer  "max_awards_per_juror"
    t.string   "thematic"
    t.string   "rubric"
    t.text     "summary"
    t.integer  "degrees",              default: 5
    t.string   "min_criteria"
    t.string   "adv_criteria"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "estimation_criteria", ["exhibition_id"], name: "index_estimation_criteria_on_exhibition_id", using: :btree

  create_table "exhibition_artworks", force: true do |t|
    t.integer  "awards_id"
    t.integer  "artworks_id"
    t.date     "dropoff_deadline"
    t.date     "pickup_start_date"
    t.date     "pickup_end_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "exhibition_artworks", ["artworks_id"], name: "index_exhibition_artworks_on_artworks_id", using: :btree
  add_index "exhibition_artworks", ["awards_id"], name: "index_exhibition_artworks_on_awards_id", using: :btree

  create_table "exhibition_jurors", force: true do |t|
    t.integer  "jurors_id"
    t.integer  "exhibitions_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "exhibition_jurors", ["exhibitions_id"], name: "index_exhibition_jurors_on_exhibitions_id", using: :btree
  add_index "exhibition_jurors", ["jurors_id"], name: "index_exhibition_jurors_on_jurors_id", using: :btree

  create_table "exhibitions", force: true do |t|
    t.string   "exhibit_name"
    t.string   "exhibit_subtitle"
    t.boolean  "private_previews",     default: false
    t.date     "preview_date"
    t.date     "opening_reception"
    t.string   "website_url"
    t.string   "flyer_graphic_url"
    t.date     "art_dropoff_start"
    t.date     "art_dropoff_deadline"
    t.string   "dropoff_location"
    t.string   "address1"
    t.string   "address2"
    t.string   "city_town"
    t.string   "state_province"
    t.string   "postal_code"
    t.string   "country"
    t.date     "art_pickup_start"
    t.date     "art_pickup_deadline"
    t.string   "pickup_location"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "jurors", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "associations"
    t.text     "biography"
    t.string   "manifest"
    t.string   "portrait_url"
    t.date     "birthdate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "organizers", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "associations"
    t.text     "biography"
    t.string   "germinating_statement"
    t.string   "portrait_url"
    t.date     "birthdate"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "participants", force: true do |t|
    t.integer  "user_id"
    t.string   "ticket_number"
    t.boolean  "rsvp",              default: false
    t.integer  "guests",            default: 1
    t.boolean  "table_reservation", default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "user_codes", force: true do |t|
    t.boolean "curator"
    t.boolean "organizer"
    t.boolean "ops_staff"
    t.boolean "juror"
    t.boolean "artist"
    t.boolean "participant"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password_hash"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "address1"
    t.string "address2"
    t.string "apt"
    t.string "city_town"
    t.string "state_province"
    t.string "postal_code"
    t.string "country"
  end

  create_table "venues", force: true do |t|
    t.integer "exhibition_name"
    t.date    "start_date"
    t.date    "end_date"
    t.string  "est_name"
    t.string  "est_phone"
    t.string  "primary_contact_fname"
    t.string  "primary_contact_lname"
    t.string  "primary_contact_phone"
    t.string  "primary_contact_email"
    t.string  "secondary_contact_fname"
    t.string  "secondary_contact_lname"
    t.string  "secondary_contact_phone"
    t.string  "secondary_contact_email"
    t.string  "address1"
    t.string  "address2"
    t.string  "apt"
    t.string  "city_town"
    t.string  "state_province"
    t.string  "postal_code"
    t.string  "country"
  end

  create_table "votes", force: true do |t|
    t.integer  "juror_id"
    t.integer  "exhibition_artworks"
    t.integer  "estimation_criteria_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "votes", ["juror_id"], name: "index_votes_on_juror_id", using: :btree

end
