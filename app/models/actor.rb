class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character = Character.find_by actor_id: self.id
    show = Show.find_by id: character

    "#{character.name} - #{show.name}"
  end
end
