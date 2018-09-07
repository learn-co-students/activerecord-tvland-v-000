class Network < ActiveRecord::Base
  has_many :shows
  
#  it "should have picked up John Mulaney's Pilot" do
  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
