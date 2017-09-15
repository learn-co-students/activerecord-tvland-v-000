class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters, through: :actors
  belongs_to :network
end
