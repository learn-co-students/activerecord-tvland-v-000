class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        character_show_array = []
        self.characters.each do |character|
            self.shows.each do |show|
                character_show_array << "#{character.name} - #{show.name}"
            end
        end
        character_show_array
    end
end