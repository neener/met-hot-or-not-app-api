class AddImageUrlToMetObject < ActiveRecord::Migration[5.0]
  def change
    add_column :met_objects, :image_url, :string
  end
end
