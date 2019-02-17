class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  has_many :genres, through: :shows


  def say_that_thing_you_say
      "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network

  end
end
