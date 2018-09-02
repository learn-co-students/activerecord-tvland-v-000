class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # binding.pry
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # binding.pry
    self.characters.collect do |character|
      self.shows.collect do |show|
        "#{character.name} - #{show.name}"
      end.first
    end
  end

end
