require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name + " " + last_name
  end

  def list_roles
    roles = []
    shows.each {|show|
      show.characters.each {|character|
        role = "#{character.name} - #{show.name}"
         roles << role if character.actor == self
      }
    }
    roles
  end

end
