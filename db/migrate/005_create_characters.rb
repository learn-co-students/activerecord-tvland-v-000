class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |table|
      table.string :name
      table.integer :show_id
    end
  end
end
