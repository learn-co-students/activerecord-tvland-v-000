class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |el|
      el.string :name
      el.integer :show_id
    end
  end
end
