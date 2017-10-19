class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :genres

  def build_network(hash)
    self.network_id = Network.create(hash)
  end

  def network
  end
end
