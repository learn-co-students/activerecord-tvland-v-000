class CreateCharacters < ActiveRecord::Migration[4.2]

  def change
    create_table :characters do |x|
      x.string :name
      x.integer :show_id
    end
  end

end
