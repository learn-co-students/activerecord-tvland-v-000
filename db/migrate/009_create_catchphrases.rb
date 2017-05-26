class CreateCatchphrases < ActiveRecord::Migration[4.2]

  def change
    create_table :catchphrases do |t|
      t.string :catchphrase
      t.integer :character_id
    end
  end

end
