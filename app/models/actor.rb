require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :character

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    array = []
    self.characters.each do |c|
      #binding.pry
      array << "#{c.name} - #{c.show.name}"
    end
    array
  end
end
