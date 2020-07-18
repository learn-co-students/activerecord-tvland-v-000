class CreateCharacters < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :characters do |t| #we get a block variable here for the table
      t.string :name
      t.integer :show_id
    end
  end
end