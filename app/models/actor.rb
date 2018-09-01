require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.actors.first_name
    self.actors.last_name
  end

  def list_roles
    #binding.pry
    self.actors.characters
    
  end


end
