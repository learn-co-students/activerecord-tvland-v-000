class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network (attribute)
    network = Network.new(attribute)
    network.shows << self
    network
  end 
end