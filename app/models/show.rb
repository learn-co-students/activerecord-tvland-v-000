# Show has data attributes
# Show has many characters in an array
# Show can build its characters through a method
# Show should have a genre
# Show can build an associated network
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
end
