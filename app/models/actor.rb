class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    full_name = self.first_name + " " + self.last_name 
  end
  
  def list_roles
    self.characters.each do |character|
      Show.all.each do |show|
        show_name = nil
        @character_role = nil 
        if show.id == character.show_id
          show_name = show.name
          @character_role = "#{character.name} - #{show_name}"
        end 
      end 
    end
    @character_role 
  end 
  
end