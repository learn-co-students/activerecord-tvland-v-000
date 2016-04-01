require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name + ' ' + last_name
  end

  def list_roles
    

    characters.map do |character| 
      character.name + " - " + shows.where(id: character.show_id)[0].name
    end.join
  end
  
end