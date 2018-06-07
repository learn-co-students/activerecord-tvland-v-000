class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase
  end

  def build_show(show_name)
    self.show = Show.new(show_name)
    # self.show.network_id = Network.build_network
  end

end
