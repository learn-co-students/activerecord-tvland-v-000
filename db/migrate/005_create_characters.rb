class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      # t.integer :actor_id  #won't work after it's already been migrated
      # must create another migration file to add a column to characters
    end
  end
end
