class RemoveCallLetters < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :call_letters, :string
  end
end
