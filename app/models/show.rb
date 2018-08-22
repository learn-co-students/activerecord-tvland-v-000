class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  #A show has many characters and has many actors through characters.
end
