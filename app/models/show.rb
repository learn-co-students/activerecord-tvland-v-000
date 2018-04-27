class Show < ActiveRecord::Base
  has_many :characters
  has_one :network

end
