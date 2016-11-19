class AlterCharacters < ActiveRecord::Migration
  def change
    change_table :characters do |c|
      c.text :catchphrase
    end
  end
end
