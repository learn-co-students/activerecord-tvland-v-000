class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t| #we get a block variable here for the table
      t.string :name
      t.integer :show_id
    end
  end
end
