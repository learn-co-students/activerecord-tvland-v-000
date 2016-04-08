class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #returns an actors first_name and last_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #list all of the characters that actor has
    roles = self.characters.map do |c|
      "#{c.name} - #{c.show.name}"
    end
    roles.join
end
