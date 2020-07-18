class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(attr = {})
    network = Network.create do |x|
      x.call_letters = attr[:call_letters]
      x.channel = attr[:channel]
    end
    self.network = network
  end
end
