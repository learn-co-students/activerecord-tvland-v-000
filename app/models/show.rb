class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    array = []
    self.characters.each do |character|
      array << character.actor.full_name
    end
    array
  end

end
