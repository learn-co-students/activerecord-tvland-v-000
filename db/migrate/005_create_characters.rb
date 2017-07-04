class CreateCharacters < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
#http://guides.rubyonrails.org/association_basics.html#the-has-many-association
