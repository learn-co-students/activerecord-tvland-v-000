class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    characters = self.characters
    characters.collect do |character|
      show = Show.find(character.show_id)
      "#{character.name} - #{show.name}"
    end
  end
end
