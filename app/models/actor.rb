class Actor < ActiveRecord::Base
  has_many :character #An actor should have many characters 
  
  def full_name 
   "#{self.first_name} #{self.last_name}"
    
  end 
  
  
  
  def list_roles
    self.characters.collect do  |c|
      "#{c.name}-#{c.show.name}"
    end 
  end 
  
end