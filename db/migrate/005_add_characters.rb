class AddCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |c|
      #primary key of :id is created for us!
      c.string :name
      c.integer :show_id
      c.integer :actor_id
    end
  end
end
