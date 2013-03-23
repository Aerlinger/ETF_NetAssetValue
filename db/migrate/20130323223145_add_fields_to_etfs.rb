class AddFieldsToEtfs < ActiveRecord::Migration
  def change
    add_column :etfs, :sponsor, :string
    add_column :etfs, :name, :string
    add_column :etfs, :symbol, :string
    add_column :etfs, :category_id, :integer
    add_column :etfs, :fund_family_id, :string
    add_column :etfs, :net_assets, :decimal
    add_column :etfs, :yield, :float
    add_column :etfs, :inception_date, :datetime
    add_column :etfs, :legal_type, :string
    add_column :etfs, :fund_summary, :text
    add_column :etfs, :cash, :decimal
    add_column :etfs, :holding_type, :string
    add_column :etfs, :exchange, :string
  end
end
