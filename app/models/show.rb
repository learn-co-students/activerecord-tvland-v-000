class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters:)
    Network.create(call_letters: call_letters).shows << self
  end
end
