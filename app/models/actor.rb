class Actor < ActiveRecord::Base
  # * An actor has many characters and has many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

end
