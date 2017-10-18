require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_show

  end

  def build_network(call_letters)
    binding.pry
    self.network.call_letters = call_letters
  end
end
