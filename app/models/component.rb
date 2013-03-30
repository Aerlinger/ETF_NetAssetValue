class Component < ActiveRecord::Base

  has_one :commodity

  belongs_to :stock
  belongs_to :etf

end
