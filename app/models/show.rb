class Show < ActiveRecord::Base
  has_many :characters
  has_many :acters, through: :characters
end
