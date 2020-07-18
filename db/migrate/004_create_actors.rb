#Create a class and inherit from ActiveRecord::Migration

#by convention, the class name should match the part of the
#file name after the number
class CreateActors < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :actors do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :first_name
      t.string :last_name
      # the above breaks down to
      # "create a column called :call_letters on table t with type string
    end
  end
end
