require 'pry'
class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character = []
    self.characters.each do |char|
      character << "#{char.name} - #{char.show.name}" 
    end
    character
  end 
end     