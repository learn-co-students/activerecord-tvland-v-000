class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end

# Write a migration for the characters table. A character should have a name, actor_id, and a show_id––a character will belong to a show (the show migration is already provided) and an actor, and we'll keep track of this relationship with these database table columns.Write a migration that adds the column catchphrase to your character model.