require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
      return "#{self.first_name} #{self.last_name}"
  end# of full_name
  
  
  def list_roles
     self.characters.all.collect {|c| "#{c.name} - #{self.shows[0].name}"}
  end# of list_roles
end