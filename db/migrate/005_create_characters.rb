class CreateCharacters < ActiveRecord::Migration

  def change
    create_table(:characters) do |tbl|
      tbl.string :name
      tbl.integer :show_id
    end
  end
end
