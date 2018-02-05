class DropCharatersTable < ActiveRecord::Migration
  def change
    drop_table :charaters
  end

end
