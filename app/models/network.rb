#has data attributes
#has many shows
#can build an associated show
#should have picked up John Mullaney's Pilot

class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
