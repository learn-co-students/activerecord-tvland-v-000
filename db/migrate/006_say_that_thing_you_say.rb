class SayThatThingYouSay < ActiveRecord::Migration[4.2]
  
  def change 
    add_column :characters, :catchphrase, :integer
  end 
end 