class Show < ActiveRecord::Base[4.2]
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
end