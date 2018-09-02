class Show < ActiveRecord::Base
  has_many :characters, through: :shows
  has_many :actors, through: :characters
end
