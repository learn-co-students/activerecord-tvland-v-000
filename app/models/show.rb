class Show < ActiveRecord::Base
  belongs_to :network
  has_many :actors, through: :characters
  has_many :characters
end
