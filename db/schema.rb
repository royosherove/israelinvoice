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

ActiveRecord::Schema.define(:version => 20110926171828) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cn"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "address"
    t.string   "cd"
    t.string   "phone"
  end

  create_table "items", :force => true do |t|
    t.float    "amount"
    t.float    "price"
    t.string   "desc"
    t.integer  "tax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "invoice_id"
  end

end
