class AddGenreToShow < ActiveRecord::Migration

  #define a change method in which to do the migration
  def change
    add_column :shows, :genre, :string
  end
end
