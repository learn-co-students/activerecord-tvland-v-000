class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.shows.collect do |show|
      "#{self.characters.first.name} - #{show.name}"
    end
  end
end
