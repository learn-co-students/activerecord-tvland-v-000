class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # binding.pry
    characters_roles = []
    self.characters.each_with_index {|s, i| characters_roles[i] = s.name}
    self.shows.each_with_index {|s,i| characters_roles[i] += " - #{s.name}"}
    characters_roles
  end
end