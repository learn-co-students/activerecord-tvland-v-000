class Show < ActiveRecord::Base
  has_many :artors, through: :characters
  belongs_to :network
  has_many :characters
end
