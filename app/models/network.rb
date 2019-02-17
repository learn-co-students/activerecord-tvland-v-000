class Network < ActiveRecord::Base
  has_many :shows
  has_many :genre, through: :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
