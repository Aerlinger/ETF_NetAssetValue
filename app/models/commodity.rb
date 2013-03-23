class Commodity < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :components
end
