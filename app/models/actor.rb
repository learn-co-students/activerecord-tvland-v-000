class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        fn = "#{self.first_name} #{self.last_name}"
        fn
    end
    def list_roles
        self.characters.collect do |c|
             "#{c.name} - #{c.show.name}"
        end
    end
    
end