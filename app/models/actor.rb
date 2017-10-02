## Actor has a first and last name - through db file
# Actor has associated characters in an array
# Actor can build its associated characters
# Actor can build its associated shows through its characters
## Actor can list its full name
# Actor can list all of its shows and characters

#   # build a method on actor that will return an array of strings in the form "#{character_name} - #{show_name}"
#   emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
#   khaleesi = Character.new(:name => "Khaleesi")
#   khaleesi.actor = emilia
#   got = Show.new(:name => "Game of Thrones")
#   khaleesi.show = got
#   khaleesi.save
#
#   khaleesi.reload
#   expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
# end
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

  end
end
