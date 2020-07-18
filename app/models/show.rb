class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters: nil)
    new_network = Network.create(call_letters: call_letters)
    self.network = new_network
  end
end
