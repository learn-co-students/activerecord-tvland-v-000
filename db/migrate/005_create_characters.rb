class CreateCharacters < ActiveRecord::Migration

  def change
    create_table :characters do |a|
      a.string :name
      a.integer :show_id
      a.integer :actor_id
    end
  end

end
