class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  #Write a method in the Actor class,
  #full_name, that returns the first and last name of an actor

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #Write a method in the Actor class,
  #list_roles, that lists all of the characters that actor has.

  def list_roles
    characters.collect do |t|
      "#{t.name} - #{t.show.name}"
    end
  end
end
