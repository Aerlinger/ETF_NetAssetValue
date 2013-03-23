class Component < ActiveRecord::Base
  # attr_accessible :title, :body

  has_one :commodity
  belongs_to :stock
  belongs_to :etf

end
