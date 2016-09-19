class Show < ActiveRecord::Base
  belongs_to :network
  has_many :actor, through: :characters
  has_many :characters

end
