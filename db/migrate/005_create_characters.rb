class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |c|
      c.string :name
      c.integer :show_id
    end
  end
end
