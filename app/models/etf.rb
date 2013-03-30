class Etf < ActiveRecord::Base

  attr_accessible :sponsor, :name, :symbol, :fund_family_id, :net_assets, :yield, :inception_date, :legal_type, :fund_summary, :cash

  has_many :categories
  has_many :components

  has_many :stocks, through: :components

  def primary_csv_column
    "Composite Ticker"
  end

  def csv_row_names
    csv_row_names = [

    ]
  end
end
