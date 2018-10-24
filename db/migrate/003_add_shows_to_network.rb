class AddShowsToNetwork < ActiveRecord::Migration[4.2]
  #to make an additive change to a schema we create
  #a new Migration[4.2][4.2], and then in the change method,
  #we make the change.
  def change
    add_column :shows, :network_id, :integer
  end
end
