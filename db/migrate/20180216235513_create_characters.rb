class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
    end
  end
end
