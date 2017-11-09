class Network < ActiveRecord::Base
  has_many :shows


  def create(channel, call_letters)
    @channel = channel
    @call_letters = call_letters
  end

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
