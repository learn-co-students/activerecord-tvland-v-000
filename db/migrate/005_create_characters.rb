# class CharactersTable < ActiveRecord::Migration
#   def change
#     create_table :characters do |x|
#       x.string :name
#       x.integer :show_id
#       x.timestamps
#     end
#   end
# end

class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
