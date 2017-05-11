class Character < ActiveRecord::Migration
  def change
    def create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
