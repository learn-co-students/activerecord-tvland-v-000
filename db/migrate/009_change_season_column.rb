class ChangeSeasonColumn < ActiveRecord::Migration
  def change
    change_column :shows, :season, :string
  end
end