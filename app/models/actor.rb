class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list_roles = []
    self.characters.each_with_index do |character, index|
      list_roles << "#{character.name} - #{self.shows[index].name}"
    end
    list_roles
  end
end