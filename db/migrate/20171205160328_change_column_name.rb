class ChangeColumnName < ActiveRecord::Migration[5.1]
	  def change
    rename_column :trucks, :Truck_Number, :truck_number
  end
  def change
  end
end
