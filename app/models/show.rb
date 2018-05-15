class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(network_hash)
    # calling on <Show id: nil, name: "Firefly", network_id: nil>
    self.network = Network.new(network_hash)
  end
end
