class AddMetDepartmentIdToMetObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :met_objects, :met_deparment_id, :integer
  end
end
