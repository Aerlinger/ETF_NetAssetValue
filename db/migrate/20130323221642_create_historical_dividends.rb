class CreateHistoricalDividends < ActiveRecord::Migration
  def change
    create_table :historical_dividends do |t|

      t.timestamps
    end
  end
end
