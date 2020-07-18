class AddNameToCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :catchphrase
    end
  end
end
