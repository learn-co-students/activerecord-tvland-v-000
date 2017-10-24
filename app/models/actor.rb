class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles #bad
    characters = self.characters.collect { |character| character.name}
    shows = self.shows.collect { |show| show.name}
    roles = "#{characters[0]} - #{shows[0]}"
  end
end
