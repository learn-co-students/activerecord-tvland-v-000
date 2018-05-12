class AddActorIdActors < ActiveRecord::Migration[4.2]
  def change
    add_column :actors, :character_id, :integer
    add_column :actors, :character, :string
  end
end
