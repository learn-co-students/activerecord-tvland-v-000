require 'pry'

class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    fullname = []
    fullname << self.first_name
    fullname << self.last_name
    fullname.join(" ")
  end

  def list_roles
    role_list = []

    role_list << self.characters.first.name
    role_list << "-"
    role_list << self.shows.first.name

    role_list.join(" ")
  end
  
end