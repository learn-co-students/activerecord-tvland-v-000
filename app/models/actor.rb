class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :charactors

  def full_name
    first_name + ' ' + last_name
  end

  def list_roles
    self.characters.collect do |character|
      character.name + " - " + character.show.name
    end
  end
end
