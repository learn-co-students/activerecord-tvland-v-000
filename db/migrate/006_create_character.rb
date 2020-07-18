class CreateCharacter < ActiveRecord::Migration
  create_table :characters do |t|
    t.string :name
    t.integer :actor_id
    t.integer :show_id
  end
end