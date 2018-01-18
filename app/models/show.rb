class Show < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  belongs_to :network

  # def build_network(show)
  #   binding.pry
  #   self
  # end
  #
  # def network_call_letters(show)
  #   #binding.pry
  # end
end
