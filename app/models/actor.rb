class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    array = []
    characters.map do |character|
      array << "#{character.name} - #{character.show.name}"
    end
    array.join(", ")
  end
end
