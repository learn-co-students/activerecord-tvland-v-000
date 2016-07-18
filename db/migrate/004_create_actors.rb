class CreateActors < ActiveRecord::Migration
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    create_table :actors do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :first_name
      # the above breaks down to
      # "create a column called :call_letters on table t with type string
      t.string :last_name
    end
  end
end
