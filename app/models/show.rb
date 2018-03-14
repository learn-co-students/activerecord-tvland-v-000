class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors
  belongs_to :network

  def build_network(call_letters)
    new_network = Network.create(call_letters)
    self.network = new_network
  end
end
