class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def list_roles
    self.characters.collect do |character|
      [character.name, Show.find_by(id: character.show_id).name].join(' - ')
    end
  end

end
