class SchemaV1 < ActiveRecord::Migration
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
  end

  create_table "etfs", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
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
  end
end
