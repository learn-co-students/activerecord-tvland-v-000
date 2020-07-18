class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " +self.last_name
  end

  def list_roles
    #character_array = self.characters
    self.characters.collect { |character| "#{character.name} - #{character.show.name}"}
  end
end
