require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    character_array = []
    full_list = self.characters
    full_list.map do |x|
      character_array << x.name 
    end
    character_array

    show_array = []
    show_list = self.shows 
    show_list.map do |x|
      show_array << x.name
    end
    show_array

    one = character_array.join()
    another = show_array.join()
    "#{one} - #{another}"
  end
end