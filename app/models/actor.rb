class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    array = []
    array << self.first_name
    array << self.last_name
    name = array.join(" ")
    name
  end

  def list_roles
    array = []
    self.characters.each do |character|
      output = []
      output << character.name
      output << character.show.name
      array << output.join(" - ")
    end
    array
  end
end
