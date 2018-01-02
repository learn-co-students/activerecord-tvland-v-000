class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
end

#A show has many characters and has many actors through characters.