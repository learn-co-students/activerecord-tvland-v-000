class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :genre
  belongs_to :network

  def array_of_characters
    character_array = []
    self.shows.characters.map do |character|
        character_array << character.name
    end
  end




end
