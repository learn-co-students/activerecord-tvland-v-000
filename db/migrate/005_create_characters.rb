class CreateCharacters < ActiveRecord::Migration
  create_table :characters do |t|
    t.string :name
    t.integer :show_id
    t.belongs_to :actor, index: true
  end
end
