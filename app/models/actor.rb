require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.collect{|char| char.name + " - " + Show.find_by_id(char.show_id).name}
  end

end
