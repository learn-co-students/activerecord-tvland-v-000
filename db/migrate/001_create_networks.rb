#Create a class and inherit from ActiveRecord::Migration

#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_networks.rb becomes class CreateNetworks
class CreateNetworks < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :networks do |t|
      t.string :call_letters
      # the above breaks down to
      # "create a column called :call_letters on table t with type string
      t.integer :channel
    end
  end
end
