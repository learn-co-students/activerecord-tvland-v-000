class Show < ActiveRecord::Base
  attr_accessor :genre 
  has_many :characters
  has_many :actors, through: :shows
  belongs_to :network  
end