class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create table :characters do |t|
      t.string name
      t.string show_id
    end
  end
end
