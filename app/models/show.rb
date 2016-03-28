class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def build_network(call_letters)
    n = Network.create(call_letters)
    n.save
    self.network_id = n.id
  end

  def network
    n = self.network_id
    Network.find(n)
  end
end