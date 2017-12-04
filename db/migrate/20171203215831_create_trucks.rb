class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.integer :Truck_Number
      t.float :Lat
      t.float :Log

      t.timestamps
    end
  end
end
