require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    char = self.characters.map do |c|
      c.name
    end[0]

    show = self.shows.map do |s|
      s.name
    end[0]

    "#{char} - #{show}"
  end

end
