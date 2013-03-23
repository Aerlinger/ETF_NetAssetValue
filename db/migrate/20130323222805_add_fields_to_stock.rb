class AddFieldsToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :name, :string
    add_column :stocks, :symbol, :string
    add_column :stocks, :sector, :string
    add_column :stocks, :industry, :string
  end
end
