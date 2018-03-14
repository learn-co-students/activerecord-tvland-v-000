class Actor < ActiveRecord::Base
  #Associate the Actor model with the Character and Show model.
  #An actor should have many characters and many shows through characters.

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    #expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
    roles = Array.new
    self.characters.each do |character|
      roles << "#{character.name} - #{character.show.name}"
    end
    roles
  end
end
