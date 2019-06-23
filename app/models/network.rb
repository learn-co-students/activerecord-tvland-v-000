class Network < ActiveRecord::Base[4.2]
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
