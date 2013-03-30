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

ActiveRecord::Schema.define(:version => 20130330015750) do

  create_table "bonds", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commodities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "components", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "type"
    t.integer  "bond_id"
    t.integer  "stock_id"
    t.integer  "commodity_id"
    t.decimal  "market_value"
    t.float    "weighting"
    t.integer  "etf_id"
  end

  create_table "etfs", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "sponsor"
    t.string   "name"
    t.string   "symbol"
    t.integer  "category_id"
    t.string   "fund_family_id"
    t.decimal  "net_assets"
    t.float    "yield"
    t.datetime "inception_date"
    t.string   "legal_type"
    t.text     "fund_summary"
    t.decimal  "cash"
    t.string   "holding_type"
    t.string   "exchange"
    t.string   "time_zone"
    t.string   "composite_name"
    t.string   "dividend_yield"
    t.string   "composite_ticker"
    t.integer  "total_shares"
    t.string   "type"
    t.string   "e_signal_ticker"
    t.decimal  "market_cap"
    t.decimal  "last_trade"
    t.string   "location"
    t.integer  "shares_outstanding"
  end

  create_table "historical_dividends", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "historical_prices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "options", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stocks", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "symbol"
    t.string   "sector"
    t.string   "industry"
    t.string   "exchange"
  end

end
