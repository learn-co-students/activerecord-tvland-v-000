class CreateShows < ActiveRecord::Migration[4.2]
  
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre 
    end
  end
  
end
