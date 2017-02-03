class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |a|
      a.string :name
      a.integer :show_id
    end
  end
end
