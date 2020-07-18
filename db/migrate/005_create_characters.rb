class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      #primary key of :id is created for us!
      t.string :name
      t.string :show_id
    end
  end
end
