class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def self.build_network(name)
    show.network = name[:name]
  end

  def self.build_show(name)
    show.name = name[:name]
  end
end
