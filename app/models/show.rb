class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(network)
    network = Network.new(network)
    self.network = network
  end
end
