class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
end

#An actor has many characters and has many shows through characters.
