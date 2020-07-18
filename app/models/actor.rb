require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    all_characters = self.characters
    all_characters.collect{|a| "#{a.name} - #{a.show.name}"}.join
  #  "#{self.characters.first.name} - #{self.shows.first.name}"
  #  binding.pry
  end
end
