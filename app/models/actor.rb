class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  #An actor has many characters and has many shows through characters.
  def full_name
    "#{self.first_name} #{self.last_name}"
    #...that returns the first and last name of an actor.
  end

  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
      end
    #...that lists all of the characters that actor has.
  end
end
