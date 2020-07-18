class CreateCharacters < ActiveRecord::Migration

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id #character belongs to a show
    end
  end

end