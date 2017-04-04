require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{first_name} #{last_name}"

  end
  def list_roles
    characters = self.characters
    array = []
    characters.each do |character|
      array<< "#{character.name} - #{character.show.name}"
    end
    array

  end

end
