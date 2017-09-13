class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  #full name
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #list shows
  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
