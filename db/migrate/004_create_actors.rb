class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :firstname
      t.string :last_name
    end
  end
end
