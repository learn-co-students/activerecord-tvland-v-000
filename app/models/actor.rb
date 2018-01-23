class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters
#binding.pry

def full_name
  self.first_name + " " +self.last_name
end

def list_roles

  self.characters.collect do |c|
         "#{c.name} - #{c.show.name}" # we are calling show name throught characters
       end

end
end
#self.shows.where(self.shows.id = self.characters.show_id)
