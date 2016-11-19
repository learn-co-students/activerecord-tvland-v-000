class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  has_one :network

  def build_network(attr = {})
    self.network = Network.create(attr)
  end

end
