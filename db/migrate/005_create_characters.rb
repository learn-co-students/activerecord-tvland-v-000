class CreateCharacters< ActiveRecord::Migration[4.2]
  # A character should have a name and a show_id––a character will belong to a show.
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.integer :actor_id
    end
  end
end
