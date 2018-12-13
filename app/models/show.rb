class Show < ActiveRecord::Base
  belongs_to :network #a network has_many shows
  has_many :characters #a character belongs_to a show
  has_many :actors, through: :characters #a character belongs_to an actor
end
