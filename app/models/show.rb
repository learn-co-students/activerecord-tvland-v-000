class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(hash)
    self.network = Network.create(call_letters: hash[:call_letters])
  end
end
