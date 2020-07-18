class AddActor < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :last_name
      t.string :first_name
      t.integer :show_id
      t.integer :character_id
    end
  end
end
