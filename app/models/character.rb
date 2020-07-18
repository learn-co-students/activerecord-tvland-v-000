class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def catchphrase=(phrase)
      @catchphrase=phrase
    end
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name)
    self.show=Show.new(name)
  end
end