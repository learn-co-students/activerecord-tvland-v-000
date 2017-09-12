require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # "Emilia Clarke"
  "#{self.first_name}" + " #{self.last_name}"
  end

  def list_roles
    # "Khaleesi - Game of Thrones"
    self.characters.collect {|char| "#{char.name} - #{char.show.name}"}
  end
end
