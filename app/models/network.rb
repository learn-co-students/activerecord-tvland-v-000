class Network < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows

  def sorry
    "We're sorry about passing on John Mullaney's pilot"
  end

  def build_network
  end
end
