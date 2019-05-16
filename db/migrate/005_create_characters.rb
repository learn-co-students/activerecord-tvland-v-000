class CreateCharacters < ActiveRecord::Migration[5.0]
  def up
  end

  def down
  end

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
    end
  end
end
#http://guides.rubyonrails.org/association_basics.html#the-has-many-association
