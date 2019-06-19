require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  
  def full_name
   name = "#{self.first_name} #{self.last_name}"
  end
  
  
  def list_roles
    lists = []
    character_array = self.characters.collect { |character|character.name}
    show_array = self.shows.collect { |show| show.name}
    list = character_array.concat show_array 
    lists << list.join(" - ")
             
  # binding.pry
  end
  
end

