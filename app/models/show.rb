class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  
  def build_network(network)
    self.network = Network.new(network)
  end

end