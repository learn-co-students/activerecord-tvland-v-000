class Actor < ActiveRecord::Base
  has_many :characters #a character belongs_to an actor
  has_many :shows, through: :characters #a character belongs_to a show, or, each character that belong to an actor also has a show

  def full_name
    "#{self.first_name}" + " #{self.last_name}"
  end

  def list_roles
    self.characters.collect {|character|
      "#{character.name} - #{character.show.name}"
    }
  end
end
