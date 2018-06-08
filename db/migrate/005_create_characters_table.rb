class CreateCharactersTable < ActiveRecord::Migration[4.2]
  create_table :characters do |t|
    t.string  :name
    t.integer :show_id
  end
end
