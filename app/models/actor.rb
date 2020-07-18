class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    show_roles = []
    self.characters.each do |character|
      show_roles << "#{character.name} - #{character.show.name}"
    end
    show_roles
  end
end
