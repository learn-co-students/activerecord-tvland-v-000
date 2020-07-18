class CreateCharacters < ActiveRecord::Migration

  def change
    create_table :characters do |c|
      c.string :name
      c.integer :show_id
      c.integer :actor_id
    end
  end

end
