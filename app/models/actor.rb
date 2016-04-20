class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
         "#{self.first_name} #{self.last_name}"
    end

    def list_roles
      a = self.characters.collect {|character| character.name} +
       self.shows.collect {|show| show.name}
       a.join(" - ")
    end
end
