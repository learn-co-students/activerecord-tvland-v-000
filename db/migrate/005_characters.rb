class Characters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      #primary key of :id is created for us!
      t.string :name
      t.integer :show_id
      
      
    end
  end 
end