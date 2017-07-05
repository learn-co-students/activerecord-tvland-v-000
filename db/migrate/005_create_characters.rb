class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |table|
      table.string :name
      table.string :show_id
    end
  end
end
