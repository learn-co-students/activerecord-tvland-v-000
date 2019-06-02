class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(arg)
    network = Network.create(arg)
    network.shows << self
  end
end
