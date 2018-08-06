class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        # f_name = self.first_name
        # l_name = self.last_name
        # f_name + l_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.map {|c| "#{c.name} - #{c.show.name}" }
    end
end