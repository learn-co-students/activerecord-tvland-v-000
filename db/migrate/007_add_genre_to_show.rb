class AddGenreToShow < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.string :genre
    end
  end
end
