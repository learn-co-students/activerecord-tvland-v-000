class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
end

#A show has many characters and has many actors through characters.
