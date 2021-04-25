class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network 

  def actors_list
    self.characters.map do |t|
      t.actor.full_name
    end
  end
end