class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    actors_char = []
    self.characters.each do |character|
      actors_char << "#{character.name} - " + shows.find(character.show_id).name
    end
    actors_char
  end
end
