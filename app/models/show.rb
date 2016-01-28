class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

  def build_network(arg)
    self.network = Network.new(arg)
  end 
end