class Show < ActiveRecord::Base
  has_many :actors
  has_many :actors, through: :characters
  belongs_to :network
end