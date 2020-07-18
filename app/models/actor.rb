## Actor has a first and last name - through db file
# Actor has associated characters in an array
# Actor can build its associated characters
# Actor can build its associated shows through its characters
## Actor can list its full name
# Actor can list all of its shows and characters

require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def all_characters
    self.characters.collect {|character| character.name}
  end

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    actor_roles = []
    self.characters.each do |character|
      actor_roles << "#{character.name} - #{character.show.name}"
    end
    actor_roles
  end
end
