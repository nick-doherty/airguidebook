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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131027042259) do

  create_table "addresses", :force => true do |t|
    t.integer  "house_id"
    t.string   "street"
    t.string   "suburb"
    t.string   "region"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "amenities", :force => true do |t|
    t.integer "house_id"
    t.string  "name"
    t.string  "type"
    t.string  "info"
  end

  create_table "emergencies", :force => true do |t|
    t.integer "house_id"
    t.string  "service"
    t.string  "contact"
  end

  create_table "extras", :force => true do |t|
    t.integer "house_id"
    t.string  "text"
  end

  create_table "houses", :force => true do |t|
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.integer  "fact"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.integer "house_id"
    t.string  "name"
    t.string  "cuisine"
    t.string  "cost"
    t.string  "link"
  end

  create_table "suburbs", :force => true do |t|
    t.integer "fact"
    t.string  "link"
  end

  create_table "transport_links", :force => true do |t|
    t.string   "type"
    t.string   "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "air_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
