class ChangeShowIdDatatype < ActiveRecord::Migration
  def change
    change_column(:characters, :show_id, :integer)
  end
end
