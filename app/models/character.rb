class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  has_many :character_shows
  has_many :shows, through: :character_shows

  def say_that_thing_you_say
  	"#{self.name} always says: #{self.catchphrase}"
  end

end

