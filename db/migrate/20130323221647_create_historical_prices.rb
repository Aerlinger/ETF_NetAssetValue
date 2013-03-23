class CreateHistoricalPrices < ActiveRecord::Migration
  def change
    create_table :historical_prices do |t|

      t.timestamps
    end
  end
end
