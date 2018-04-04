class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_last = self.first_name + " " + self.last_name
    first_last
  end

  def list_roles
    array = []
    self.characters.each do |character|
      array << character.name + " - " + Show.find_by_id(character.show_id).name
    end
    array
  end
end
