class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #self.characters.collect do |character|
    #  "#{self.characters.name} - #{self.characters.shows.name}"
    #end
    "#{self.characters.first.name} - #{self.shows.first.name}"
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
