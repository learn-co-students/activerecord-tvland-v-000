class ChangeDataTypeForDayInShows < ActiveRecord::Migration[5.1]
  
  def change
    change_column :shows, :day, :text 
  end
  
end