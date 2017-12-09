class Character < ActiveRecord::Base
  belongs_to :actors
  belongs_to :shows

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end

end
