class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + ' ' + self.last_name
    full_name
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      role = character.name + ' - ' + character.show.name
      roles << role
    end
    roles
  end
end
