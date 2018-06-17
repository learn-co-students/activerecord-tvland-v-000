class CreateCharacters < ActiveRecord::Migration[4.2]
  #define a change method in which to do the migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
