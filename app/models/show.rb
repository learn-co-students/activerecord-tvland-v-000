#has data attributes
#has many characters in an array
#can build its characters through a method
#should have a genre
#can build an associated network

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
end
