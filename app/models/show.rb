class Show < ActiveRecord::Base
  has_many :character
  has_many :actor , through: :character 
end
