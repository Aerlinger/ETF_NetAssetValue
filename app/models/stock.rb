class Stock < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :components

  has_many :etfs, through: :components
end
