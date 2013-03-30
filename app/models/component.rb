class Component < ActiveRecord::Base

  belongs_to :stock
  belongs_to :etf

end
