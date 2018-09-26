require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  #its best to define all relationships at the start.
  #always rake:db and delete schema 
  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    characters = []
    self.characters.each do |character|
      characters << character.name + " - " + character.show.name
      #look at the relationships
      #characters each have one show
    end
    characters
  end
end
