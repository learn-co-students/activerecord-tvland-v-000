class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end #full_name

  def list_roles
    self.characters.collect { |c| "#{c.name} - #{c.show.name}" }
  end #list_roles


end #class Actor
