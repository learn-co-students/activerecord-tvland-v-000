class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
end

# A character belongs to an actor and belongs to a show.
