class ChangeCatchphrase < ActiveRecord::Migration[4.2]

  def change
    change_table :characters do |t|
      t.rename :catch_phrase, :catchphrase
    end
  end
end
