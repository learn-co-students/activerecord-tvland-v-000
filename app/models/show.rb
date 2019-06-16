class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(attributes)
    network = Network.create(attributes)
    self.network = network
  end
end
