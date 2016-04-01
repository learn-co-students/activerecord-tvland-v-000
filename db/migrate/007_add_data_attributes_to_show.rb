class AddDataAttributesToShow < ActiveRecord::Migration
  add_column :shows, :day, :string
  add_column :shows, :season, :string
end