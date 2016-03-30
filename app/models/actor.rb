class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role_list = []

    role_list << self.characters.first.name
    role_list << "-"
    role_list << self.shows.first.name

    role_list.join(" ")
  end
  
end
