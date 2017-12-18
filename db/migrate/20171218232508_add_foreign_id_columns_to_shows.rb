class AddForeignIdColumnsToShows < ActiveRecord::Migration[5.1]
  def change
    add_column(:shows, :character_id, :integer)
  end
end
