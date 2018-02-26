class Actor < ActiveRecord::Base
    
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        #full_name = Actor.all.first.first_name + Actor.all.first.last_name
        #full_name.gsub(/(.{6})(?=.)/, '\1 \2')
        #did it using regex
        "#{first_name} #{last_name}"
    end
    
    def list_roles
        #character = Actor.all.first.characters.first.name 
        #show = Actor.all.first.shows.first.name
        #character + " - " + show
        #For fun - did it w/o collect
        self.characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
    
  
end