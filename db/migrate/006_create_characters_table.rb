class CreateCharactersTable < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      #primary key of :id is created for us!
      t.string :name
      t.string :show_id
      t.timestamp
    end
  end
end
