class AddFieldsToComponents < ActiveRecord::Migration
  def change
    add_column :components, :type, :string
    add_column :components, :bond_id, :integer
    add_column :components, :stock_id, :integer
    add_column :components, :commodity_id, :integer
    add_column :components, :market_value, :decimal
    add_column :components, :weighting, :float
  end
end
