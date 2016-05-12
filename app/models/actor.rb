require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    character = self.characters.collect do |t|
      t.name
    end
    show = self.shows.collect do |t|
      t.name
    end
    character[0] + " - " + show[0]
  end
end