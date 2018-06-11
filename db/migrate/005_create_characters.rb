class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.text :name
      t.integer :show_id
    end
  end
end
