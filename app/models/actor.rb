require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    chars = Character.find_by_id(self.id)
    chars.name + " - " + Show.find_by_id(chars.show_id).name
  end

end
