class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(network_info)
    self.network = Network.new(network_info)
  end

end
