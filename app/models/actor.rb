class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #returns first and last name of an actor
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #lists all characters actor has
    characters.collect do |c|
      "#{c.name} - #{c.show.name}"
    end
  end

end
