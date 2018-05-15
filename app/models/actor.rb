class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
   characters = self.characters
   roles= []
   characters.each do |character|
     id = character.show_id
     show = Show.find_by(id: id)
     roles <<  character.name + " - " + show.name
   end
   roles
  end
end
