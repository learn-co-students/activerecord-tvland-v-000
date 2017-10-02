class CreateCharacters  < ActiveRecord::Migration
  def change
    create_table :characters do |t| #we get a block variable here for the table
      t.string :name
      t.integer :show_id
    end
  end
end
