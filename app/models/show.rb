class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  belongs_to :network
end
