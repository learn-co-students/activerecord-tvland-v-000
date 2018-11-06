class Actor < ActiveRecord::Base
  has_many :character
  has_many :shows, through: :character
end
