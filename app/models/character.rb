class Character < ActiveRecord::Base
  has_many :actors
  has_many :shows, through: :networks
end
