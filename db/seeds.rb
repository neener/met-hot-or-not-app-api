# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'MetObjects.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	image_url = MetObject.get_image_url(row['Object ID'])
	if image_url
    t = MetObject.new
    t.object_number = row['Object Number']
    t.is_highlight = row['Is Highlight']
    t.is_public_domain = row['Is Public Domain']
    t.object_id = row['Object ID']
    t.department = row['Department']
    t.object_name = row['Object Name']
    t.title = row['Title']
    t.culture = row['Culture']
    t.period = row['Period']
    t.dynasty = row['Dynasty']
    t.reign = row['Reign']
    t.portfolio = row['Portfolio']
    t.artist_role = row['Artist Role']
    t.artist_prefix = row['Artist Prefix']
    t.artist_display_name = row['Artist Display Name']
    t.artist_display_bio = row['Artist Display Bio']
    t.artist_suffix = row['Artist Suffix']
    t.artist_alpha_sort = row['Artist Alpha Sort']
    t.artist_nationality = row['Artist Nationality']
    t.artist_begin_date = row['Artist Begin Date']
    t.artist_end_date = row['Artist End Date']
    t.object_date = row['Object Date']
    t.object_begin_date = row['Object Begin Date']
    t.object_end_date = row['Object End Date']
    t.medium = row['Medium']
    t.dimensions = row['Dimensions']
    t.credit_line = row['Credit Line']
    t.geography_type = row['Geography Type']
    t.city = row['City']
    t.state = row['State']
    t.county = row['County']
    t.country = row['Country']
    t.region = row['Region']
    t.subregion = row['Subregion']
    t.locale = row['Locale']
    t.locus = row['Locus']
    t.excavation = row['Excavation']
    t.river = row['River']
    t.classification = row['Classification']
    t.rights_and_reproduction = row['Rights and Reproduction']
    t.link_resource = row['Link Resource']
    t.metadata_date = row['Metadata Date']
    t.repository = row['Repository']
    t.image_url = image_url
    t.save
    puts "#{t.department}, #{t.title}, #{t.image_url} saved"
  end
end

puts "There are now #{MetObject.count} rows in the transactions table"