#has a first and last name                                                                                                                                                             
#has associated characters in an array                                                                                                                                                 
#can build its associated characters                                                                                                                                                   
#can build its associated shows through its characters                                                                                                                                 
#can list its full name                                                                                                                                                                
#can list all of its shows and characters 

class Actor < ActiveRecord::Base
#Associate the Actor model with the Character and Show model. An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

#Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

#Write a method in the Actor class, #list_roles, that lists all of the characters that actor has.
  def list_roles
      self.characters.collect{|char| "#{char.name} - #{char.show.name}"}
    end
  end
