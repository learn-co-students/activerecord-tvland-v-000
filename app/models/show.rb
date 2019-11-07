class Show < ActiveRecord::Base
  has_many :characters
  has_many :actor, through: :characters
  belongs_to :network
end