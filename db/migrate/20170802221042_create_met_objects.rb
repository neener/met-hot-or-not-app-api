class CreateMetObjects < ActiveRecord::Migration[5.0]
  def change
    create_table :met_objects do |t|
      t.string :object_number
      t.boolean :is_highlight
      t.boolean :is_public_domain
      t.integer :object_id
      t.string :department
      t.string :object_name
      t.string :title
      t.string :culture
      t.string :period
      t.string :dynasty
      t.string :reign
      t.string :portfolio
      t.string :artist_role
      t.string :artist_prefix
      t.string :artist_display_name
      t.string :artist_display_bio
      t.string :artist_suffix
      t.string :artist_alpha_sort
      t.string :artist_nationality
      t.integer :artist_begin_date
      t.integer :artist_end_date
      t.integer :object_date
      t.integer :object_begin_date
      t.integer :object_end_date
      t.string :medium
      t.string :dimensions
      t.string :credit_line
      t.string :geography_type
      t.string :city
      t.string :state
      t.string :county
      t.string :country
      t.string :region
      t.string :subregion
      t.string :locale
      t.string :locus
      t.string :excavation
      t.string :river
      t.string :classification
      t.string :rights_and_reproduction
      t.string :link_resource
      t.datetime :metadata_date
      t.string :repository

      t.timestamps
    end
  end
end
