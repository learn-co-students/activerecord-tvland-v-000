class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(stuff)
    self.network = Network.create(call_letters: stuff[:call_letters])
    self.network
  end
end
