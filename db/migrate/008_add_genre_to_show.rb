class AddGenreToShow < ActiveRecord::Migration
  add_column :shows, :genre, :string
end