class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(call_letters:)
    network = Network.find_or_create_by(call_letters: call_letters)
    self.network_id = network.id
  end

end
