class Actor < ActiveRecord::Base
  
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    i = 0 
    while i < self.characters.length
      return "#{self.characters[i].name} - #{self.shows[i].name}"
      i = i + 1 
    end 
  end 
  
end