class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list =[]
    list<<self.characters.first.name 
    list<<"-"
    list<<self.shows.first.name 
    list.join(" ")
  end
  
end