require 'pry'

class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        c_name = self.characters.all.map {|c| c.name}.join
        s_name = self.shows.all.map {|s| s.name}.join
        "#{c_name} - #{s_name}"
    end

    def list_roles
        characters.collect do |character|
          "#{character.name} - #{character.show.name}"
        end
      end

end

