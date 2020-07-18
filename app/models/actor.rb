class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
   
  def full_name
    full_name = [self.first_name, self.last_name].join(" ")
  end

  def list_roles
   self.characters.collect do |character|
     [character.name, character.show.name].join(" - ")
   end
 end
end