class ChangeMetDeparmentToMetDepartment < ActiveRecord::Migration[5.0]
  def change
     rename_column :met_objects, :met_deparment_id, :met_department_id
  end
end
