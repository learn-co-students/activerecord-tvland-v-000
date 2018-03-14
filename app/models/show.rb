class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def build_network(network)
    network = Network.new(network)
    self.network = network
  end
end
