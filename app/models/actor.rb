require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect do |c|
      "#{c.name} - #{c.show.name}"
      # c.show.collect do |s|
      #   "c.name - s.name"
      # end
    end
  end

end
