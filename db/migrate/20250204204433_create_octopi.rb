class CreateOctopi < ActiveRecord::Migration[7.1]
  def change
    create_table :octopi do |t|

      t.timestamps
    end
  end
end
