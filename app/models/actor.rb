class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  #returns the first and last name of an actor
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
  #lists all of the characters that actor has
    self.characters.collect do |character|
      "#{character.name} - #{Show.find(character.show_id).name}"
    end
  end
end
