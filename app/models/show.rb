class Show < ActiveRecord::Base
  has_many :characters
  has_one :network
  has_many :actors, through: :characters
end
