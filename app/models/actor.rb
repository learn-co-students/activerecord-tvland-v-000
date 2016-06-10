class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters = self.characters.map do |character|
      [character.show_id, character.name]
    end

    shows = self.shows.map do |show|
      [show.id, show.name]
    end

    result = []
    characters.each do |character|
      shows.each do |show|
        if show[0] == character[0]
          result << "#{character[1]} - #{show[1]}"
        end
      end
    end
    result
  end

end