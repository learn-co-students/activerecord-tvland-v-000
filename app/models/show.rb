class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(hash)
    new_network = Network.create(call_letters: hash[:call_letters])
    self.network_id = new_network.id
    new_network
  end
end
