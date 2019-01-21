class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name 
  end
  
  def list_roles 
    roles = []
    array_char = self.characters.collect do |character|
      character.name
    end
    array_show = self.shows.collect do |show|
      show.name 
    end
    role = array_char.concat array_show
    roles << role.join(" - ")
    roles
  end
end