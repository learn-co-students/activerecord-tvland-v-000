class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " +self.last_name
  end

  def list_roles
    roles = []
    self.characters.each_with_index do |character,index|
      roles << "#{character.name} - #{self.shows[index].name}"
    end
    roles
  end

end
