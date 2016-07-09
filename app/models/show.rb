

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters: )
    a_network = Network.new(call_letters: call_letters)
    self.network = a_network
    a_network.call_letters

  end

end
