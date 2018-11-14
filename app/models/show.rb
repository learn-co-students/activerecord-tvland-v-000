class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  #belongs_to :genre

  def build_network(name)
    self.network  = Network.create(name)
  end

end
