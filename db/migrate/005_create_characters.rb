class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :catchphrase
    end
  end
end
