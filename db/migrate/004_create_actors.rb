<<<<<<< HEAD
class CreateActors < ActiveRecord::Migration[4.2]
=======
class CreateActors < ActiveRecord::Migration
>>>>>>> 0a7eab2a4a0b873327b20dd7ca7648631f5a0a5c
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :firstname
      t.string :last_name
    end
  end
end
