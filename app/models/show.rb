class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :genre

  def build_network(network)
  end
end
