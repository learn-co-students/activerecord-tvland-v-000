class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = Array.new
    name << self.first_name
    name << self.last_name
    name.join(" ")
  end

  def list_roles
    roles = self.characters.map {|x| "#{x.name} - #{x.show.name}"}
  end
end
