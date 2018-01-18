class Show < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

end
