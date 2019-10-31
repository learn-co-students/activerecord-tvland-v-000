class Character < ActiveRecord::Base
 belongs_to :actor  #A character belongs to an actor and belongs to a show
 belongs_to :show 
end