class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :character
  belongs_to :network
end
