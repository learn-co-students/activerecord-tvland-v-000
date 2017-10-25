class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.all.collect {|s| "#{s.name} - #{s.show.name}"}
  end
  # An actor has many characters and has many shows through characters.
  # A character belongs to an actor and belongs to a show.
  # A show has many characters and has many actors through characters.
end
