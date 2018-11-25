require "pry"
class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    binding.pry
    create_table :characters do |t|
      t.string :name
      t.integer :show_id

      # t.integer :actor_id
      # t.text :catchphrase
    end
  end

end
