class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

end


# Show(id: integer, name: string, network_id: integer, genre: string, day: string, season: string)
