class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = []

    self.characters.each do |character|
      actors << character.actor.full_name
    end

    actors
  end
end
