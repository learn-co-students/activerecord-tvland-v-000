class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # def network
  #   Network.find(self.network_id)
  # end
  #
  # def build_network(call_letters)
  #   self.network = Network.new(call_letters)
  # end
end
