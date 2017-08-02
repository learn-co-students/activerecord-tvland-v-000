class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    shows.collect{|show| "#{show.characters.detect{|character| character.actor.full_name == self.full_name}.name} - #{show.name}"}
  end
end
