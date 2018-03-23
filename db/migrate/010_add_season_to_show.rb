class AddSeasonToShow < ActiveRecord::Migration[4.2]

  def change
    add_column :shows, :season, :string
  end
end
