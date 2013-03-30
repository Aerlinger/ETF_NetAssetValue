class AddEtfIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :etf_id, :integer
  end
end
