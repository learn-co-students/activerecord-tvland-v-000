class AddShowColumns2 < ActiveRecord::Migration
  def change
    add_column :shows, :network, :string
  end
end
