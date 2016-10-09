class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        name = [self.first_name, self.last_name]
        name.join(" ")
    end
    
    def list_roles
        self.characters.map do |char|
            "#{char.name} - #{char.show.name}"
        end
    end
end