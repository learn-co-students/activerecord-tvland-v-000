class AddsColumnToShowTable< ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :season, :string
  end

end
