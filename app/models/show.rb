class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def self.build_network(letters)
    network.call_letters = letters
  end
end
