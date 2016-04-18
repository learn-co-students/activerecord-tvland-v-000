class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(atts)
    network = Network.create(atts)
    network.shows << self
  end
end