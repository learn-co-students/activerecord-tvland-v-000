

class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters


  def full_name

    #that returns the first and last name of an actor.
    name = "#{self.first_name} #{self.last_name}"
    name
  end


  def list_roles

    self.characters.map do |c|
      c.name
      c.show.name
    list_roles_names = "#{c.name} - #{c.show.name}"
    list_roles_names
    end
end


end
