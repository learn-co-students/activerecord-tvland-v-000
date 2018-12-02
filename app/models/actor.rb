class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    self.first_name + " " + self.last_name
  end 
  
  def list_roles
    list_of_roles = []
    self.characters.each{ |c| list_of_roles << "#{c.name} - #{c.show.name}" }
    list_of_roles
  end
end