ActiveRecord::Schema.define(:version => 20131029235124) do

  create_table "amenities", :force => true do |t|
    t.integer "house_id"
    t.string  "name"
    t.string  "info"
  end

  create_table "emergency_contacts", :force => true do |t|
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
    t.string   "air_url"
    t.string   "image"
    t.string   "street"
    t.string   "suburb"
    t.string   "region"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "region_facts", :force => true do |t|
    t.integer "house_id"
    t.string  "fact"
    t.string  "link"
  end

  create_table "restaurants", :force => true do |t|
    t.integer "house_id"
    t.string  "name"
    t.string  "cuisine"
    t.string  "cost"
    t.string  "link"
  end

  create_table "suburb_facts", :force => true do |t|
    t.integer "house_id"
    t.string  "fact"
    t.string  "link"
  end

  create_table "transport_links", :force => true do |t|
    t.integer  "house_id"
    t.string   "name"
    t.string   "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "email"
  end

end
