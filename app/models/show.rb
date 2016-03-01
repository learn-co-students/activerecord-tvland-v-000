class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(hash)
    network = Network.new(hash)
    self.network = network
  end
end
