class Actor < ActiveRecord::Base
  has_many :character
  has_many :show, through: :character
  
  
  
end