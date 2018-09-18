
class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create table :actors do |t|
      t.string first_name
      t.string last_name
    end
  end
end
