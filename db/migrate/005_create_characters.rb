class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |q|
      q.string :name
      q.integer :show_id
    end
  end
end
