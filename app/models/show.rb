class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  belongs_to :network
end