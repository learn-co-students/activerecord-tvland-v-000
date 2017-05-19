class Show < ActiveRecord::Base
  has_many :characters

  belongs_to :network

  def build_network(hash)
    self.network = Network.create(hash)
  end
end
