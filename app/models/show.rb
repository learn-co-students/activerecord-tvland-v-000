class Show < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def build_network(call_letters:)
    network = Network.new(call_letters: call_letters)
    self.network_id = network.id
  end

end
