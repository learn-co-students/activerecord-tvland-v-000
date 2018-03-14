class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
#has_many is pluralized so shows not show
    def full_name
      self.first_name + " " +self.last_name
    end

    #build a method on actor that will return an array of strings in the form "#{character_name} - #{show_name}"
    def list_roles
        self.characters.collect do |c|  #collect iterates over an array and creates a new array with that info
        "#{c.name} - #{c.show.name}"
        end
    end
end

#An actor has many characters and has many shows through characters.
