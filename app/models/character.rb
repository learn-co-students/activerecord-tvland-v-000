class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network

  end

end
# can chain-build associations to which it belongs (FAILED - 1)
#
# Failures:
#
# 1) Character can chain-build associations to which it belongs
#    Failure/Error: malcolm.build_show(:name => "Firefly").build_network(:call_letters => "Fox")
#
#    NoMethodError:
#      undefined method `build_network' for #<Show id: nil, name: "Firefly", network_id: nil>
