class Network < ActiveRecord::Base

  has_many :shows
  has_many :characters, through: :shows

  def say_that_thing_you_say
    "#{character.name} always says: #{character.catchphrase}"
  end 

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end

end
