class CreateEtfs < ActiveRecord::Migration
  def change
    create_table :etfs do |t|

      t.timestamps
    end
  end
end
