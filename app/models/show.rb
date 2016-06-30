class Show < ActiveRecord::Base
  has_many   :actors, through: :shows
  has_many   :characters
  belongs_to :network

  def build_network(name)
    self.network = Network.find_or_create_by(name)
  end
end
