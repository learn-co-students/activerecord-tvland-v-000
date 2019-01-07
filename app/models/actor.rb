class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters 
  
  def full_name
    full_name_array = [] 
    full_name_array << self.first_name
    full_name_array << self.last_name 
    full_name_array.join(" ")
  end
  
  def list_roles
    "#{self.characters[0].name} - #{self.shows[0].name}"
  end
      
    
end