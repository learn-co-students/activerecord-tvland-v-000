class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :fname
      t.integer :show_id
    end
  end
end