class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |ch|
      ch.string :name
      ch.string :catchphrase
      ch.integer :show_id
      ch.integer :actor_id
    end
  end
end