class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + " " + self.last_name
  end

  def list_roles
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end

#Character.find_by(actor_id: self.id).name
#Character.find_by(actor_id: self.id).show.name
# perhaps find_all? SELECT * FROM characters WHERE actor_id = self.id
