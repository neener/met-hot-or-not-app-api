class CreateMetDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :met_departments do |t|
      t.string :department_name

      t.timestamps
    end
    add_index :met_departments, :department_name, unique: true
  end
end
