class Actor < ActiveRecord::Base
  has_many  :characters
  has_many  :shows, through: :characters


 def full_name
   # return the first_name and last_name of the actor
   "#{ self.first_name } #{ self.last_name }"
 end


 def list_roles
   # list_roles, that lists all of the characters that actor has.
     self.characters.collect do |character|
       "#{ character.name } - #{ character.show.name }"
     end
 end


end
