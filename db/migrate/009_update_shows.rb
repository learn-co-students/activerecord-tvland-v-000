class UpdateShows < ActiveRecord::Migration[4.2]
  def change
      rename_column :shows, :genres_id, :genre
      change_column(:shows, :genre, :string)
  end
end
