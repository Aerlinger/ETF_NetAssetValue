class AddExchangeToEtfs < ActiveRecord::Migration
  def change
    add_column :etfs, :time_zone, :string
    add_column :etfs, :composite_name, :string
    add_column :etfs, :dividend_yield, :string
    add_column :etfs, :composite_ticker, :string
    add_column :etfs, :total_shares, :integer
    add_column :etfs, :type, :string
    add_column :etfs, :e_signal_ticker, :string
    add_column :etfs, :market_cap, :decimal
    add_column :etfs, :last_trade, :decimal
    add_column :etfs, :location, :string
    add_column :etfs, :shares_outstanding, :integer
  end
end
