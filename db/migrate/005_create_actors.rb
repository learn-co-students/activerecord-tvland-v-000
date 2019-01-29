class CreateActors < ActiveRecord::Migration[4.2]

  def change
    create_table :actors do |t|
      t.string  :first_name
      t.string  :last_name

      end
  end

  def full_name
    '#{first_name}, #{last_name}
  end
