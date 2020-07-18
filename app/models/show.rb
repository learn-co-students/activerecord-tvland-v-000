class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(x)
    self.network = Network.new(x)
  end

end
