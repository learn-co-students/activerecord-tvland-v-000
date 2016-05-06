class Network < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows
  has_many :actors, through: :characters

  def sorry
    "We're sorry about passing on John Mullaney's pilot"
  end
end
