class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  has_many :characters
end
