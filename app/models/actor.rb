class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #could also do "#{self.first_name} #{self.last_name}"
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.collect do |character|
      #could also do "#{character.name} - #{character.show.name}"
    character.name + " - " + character.show.name
    end
  end

end
