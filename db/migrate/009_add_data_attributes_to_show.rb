class AddDataAttributesToShow < ActiveRecord::Migration
  add_column :shows, :season, :string
  add_column :shows, :day, :string
end
