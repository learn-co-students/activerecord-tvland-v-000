class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(hash)
    network = Network.new(hash)
    #network.shows << self
    self.network = network
  end

end
