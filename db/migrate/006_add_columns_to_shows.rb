class AddColumnsToShows < ActiveRecord::Migration
  def change
    add_column :shows, genre: :string
    add_column :shows, day: :datetime
  end
end
