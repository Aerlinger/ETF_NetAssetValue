class Etf < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :categories
  has_many :components
end
