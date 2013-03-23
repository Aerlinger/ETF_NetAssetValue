class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|

      t.timestamps
    end
  end
end
