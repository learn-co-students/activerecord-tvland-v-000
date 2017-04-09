class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_n = self.first_name
    last_n = self.last_name
    "#{first_n} #{last_n}"
  end

  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end
