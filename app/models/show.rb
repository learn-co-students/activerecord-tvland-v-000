class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(asso)
    the_asso = Network.create(asso)
    self.network = the_asso
  end
end
