class AddsColumnToCharatersTable < ActiveRecord::Migration[5.1]

  def change
      add_column :charaters, :catchphrase , :string
  end

end
