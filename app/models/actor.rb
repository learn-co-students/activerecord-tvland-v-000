class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    f = self.first_name
    l = self.last_name
    f + " " + l
  end 
  
  def list_roles
    self.characters.each do |n|
   c = n.name
   s = n.show.name
   return c + " - " + s
 end
end 
  
end