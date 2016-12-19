class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :character_shows
end