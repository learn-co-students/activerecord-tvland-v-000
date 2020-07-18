class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    actor_id = self.id
    characters = Character.where(actor_id: actor_id)

    actor_roles = characters.collect do |character|
      character_name = character.name
      show_name = Show.find(character.show_id).name

      role = "#{character_name} - #{show_name}"
    end

    actor_roles[0]
  end

end