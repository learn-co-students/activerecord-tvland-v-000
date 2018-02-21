class Actor < ActiveRecord::Base
   has_many :characters
   has_many :shows, through: :characters

   def full_name
      first_name + ' ' + last_name
   end

   def list_roles
      characters.map do |characters|
         characters.name + ' - ' + characters.show.name
      end.join('')
   end
end
