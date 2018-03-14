class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show


  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name:)
    self.show.name = name
  end

  def build_network(call_letters:)
    x = Network.new(call_letters: call_letters)
    self.show
  end


end
