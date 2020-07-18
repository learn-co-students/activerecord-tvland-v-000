class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.all.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
