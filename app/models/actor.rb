require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.map {|c| "#{c.name} - #{c.show.name}"} #characters can be called because the join is mentioned above, show is through characers, both characters and show have a name
  end
end
