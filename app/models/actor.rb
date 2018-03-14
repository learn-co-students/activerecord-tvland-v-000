class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    self.characters.each do |c|
      return character_and_show_name(c)
    end
  end

  def character_and_show_name(character)
      character.name + ' - ' + character.show.name
  end

end
