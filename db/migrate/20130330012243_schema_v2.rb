class SchemaV2 < ActiveRecord::Migration

  drop_table "bonds"
  drop_table "commodities"
  drop_table "components"
  drop_table "etfs"
  drop_table "historical_dividends"
  drop_table "historical_prices"
  drop_table "stocks"
  drop_table "options"

  create_table "bonds" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commodities" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "components" do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "type"
    t.integer  "bond_id"
    t.integer  "stock_id"
    t.integer  "commodity_id"
    t.decimal  "market_value"
    t.float    "weighting"
  end

  create_table "etfs" do |t|
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

  create_table "historical_dividends" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "historical_prices" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "options" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stocks" do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "symbol"
    t.string   "sector"
    t.string   "industry"
  end

  add_column :stocks, :exchange, :string
end
