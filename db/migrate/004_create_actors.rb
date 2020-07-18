class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
