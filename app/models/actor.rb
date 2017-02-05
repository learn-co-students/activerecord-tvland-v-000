class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    def full_name
      [self.first_name, self.last_name].join(" ")
    end
    

    def list_roles
      name = self.characters.map do |each|
        each.name
      end
      show = self.shows.map do |each|
        each.name
      end
         (name + show).join(" - ")
    end
end
