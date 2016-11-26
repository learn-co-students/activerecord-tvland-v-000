# class AddCatchphraseToCharacters < ActiveRecord::Migration
#   def change
#     add_column :characters, :catch_phrase, :string
#   end
# end

class AddActorIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor_id, :integer
  end
end
