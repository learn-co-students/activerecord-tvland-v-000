class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    all_characters = self.characters.all
    all_characters.collect do |character_obj|
      "#{character_obj.name} - #{character_obj.show.name}"
    end
  end
end
