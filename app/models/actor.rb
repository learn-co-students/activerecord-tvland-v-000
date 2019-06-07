#* Associate the `Actor` model with the `Character` and `Show` model. An actor should have many characters and many shows through characters.mh
#* Write a method in the `Actor` class, `#full_name`, that returns the first and last name of an actor.
#* Write a method in the `Actor` class, `#list_roles`, that lists all of the characters that actor has.
#An actor has many characters and has many shows through characters. MH
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.map do |c|
      "#{c.name} - #{c.show.name}"
    end
  end
end
