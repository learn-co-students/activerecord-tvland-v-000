class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

    "#{self.first_name} #{self.last_name}"

  end
  def list_roles
    list = []
    counter = 0
    self.characters.each do |character|
      #binding.pry
      show = Show.find(character.show_id)
      if show != nil
        list[counter] = "#{character.name} - #{show.name}"
        counter += 1
      end

      #binding.pry
    end
    list
  end

end
