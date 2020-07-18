class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name
  end

  def list_roles
    roles = self.characters.collect do |character|
      character_name = character.name
      character_role = Show.where(:id == character.id).first.name
      "#{character_name} - #{character_role}"
    end
    roles
  end
end
