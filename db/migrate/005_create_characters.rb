class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      add_foreign_key :show_id
      add_foreign_key :actor_id
    end
  end
end