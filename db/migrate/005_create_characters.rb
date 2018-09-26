class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string  :name
      t.integer :show_id
      t.integer :actor_id
      t.integer :network_id
      #put an id for everything something belongs to something.
      #the read me didn't say so.
      #always delete the schema and test after you add a new column in a table (labs only)
    end
  end
end
