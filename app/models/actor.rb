class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name # NOT a Class Method, don't use .self for def
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    # self.characters.all
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
  
end