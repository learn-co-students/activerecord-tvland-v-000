require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  #binding.pry

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters.each do |character|
      show_title = Show.find_by(id: character.show_id).name
      roles << "#{character.name} - #{show_title}"
    end
    roles
  end

end
