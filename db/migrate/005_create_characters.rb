class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :character do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
