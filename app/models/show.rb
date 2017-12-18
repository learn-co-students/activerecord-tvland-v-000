class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :shows
  belongs_to :network

end
