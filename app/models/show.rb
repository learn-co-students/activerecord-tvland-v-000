class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(options)
    self.network = Network.create(call_letters: options[:call_letters])
    self.network
  end
end
