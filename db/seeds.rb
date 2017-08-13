# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'sqlite3'

sqlite_db = SQLite3::Database.new(Rails.root.join('db','development.sqlite3').to_s) #or whatever the name of that file actually is
i = 1
sqlite_db.execute('select * from met_objects;') do |row|
    p i
    i  += 1
    obj = MetObject.new
    obj.object_number = row[1]
    obj.is_highlight = row[2]
    obj.is_public_domain = row[3]
    obj.object_id = row[4]
    obj.department = row[5]
    obj.object_name = row[6]
    obj.title = row[7]
    obj.culture = row[8]
    obj.period = row[9]
    obj.dynasty = row[10]
    obj.reign = row[11]
    obj.portfolio = row[12]
    obj.artist_role = row[13]
    obj.artist_prefix = row[14]
    obj.artist_display_name = row[15]
    obj.artist_display_bio = row[16]
    obj.artist_suffix = row[17]
    obj.artist_alpha_sort = row[18]
    obj.artist_nationality = row[19]
    obj.artist_begin_date = row[20]
    obj.artist_end_date = row[21]
    obj.object_date = row[22]
    obj.object_begin_date = row[23]
    obj.object_end_date = row[24]
    obj.medium = row[25]
    obj.dimensions = row[26]
    obj.credit_line = row[27]
    obj.geography_type = row[28]
    obj.city = row[29]
    obj.state = row[30]
    obj.county = row[31]
    obj.country = row[32]
    obj.region = row[33]
    obj.subregion = row[34]
    obj.locale = row[35]
    obj.locus = row[36]
    obj.excavation = row[37]
    obj.river = row[38]
    obj.classification = row[39]
    obj.rights_and_reproduction = row[40]
    obj.link_resource = row[41]
    obj.metadata_date = row[42]
    obj.repository = row[43]
    obj.created_at = row[44]
    obj.updated_at = row[45]
    obj.image_url = row[46]
    obj.save!
end

# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'MetObjects.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
# 	image_url = MetObject.get_image_url(row['Object ID'])
# 	if image_url
#     t = MetObject.new
#     t.object_number = row['Object Number']
#     t.is_highlight = row['Is Highlight']
#     t.is_public_domain = row['Is Public Domain']
#     t.object_id = row['Object ID']
#     t.department = row['Department']
#     t.object_name = row['Object Name']
#     t.title = row['Title']
#     t.culture = row['Culture']
#     t.period = row['Period']
#     t.dynasty = row['Dynasty']
#     t.reign = row['Reign']
#     t.portfolio = row['Portfolio']
#     t.artist_role = row['Artist Role']
#     t.artist_prefix = row['Artist Prefix']
#     t.artist_display_name = row['Artist Display Name']
#     t.artist_display_bio = row['Artist Display Bio']
#     t.artist_suffix = row['Artist Suffix']
#     t.artist_alpha_sort = row['Artist Alpha Sort']
#     t.artist_nationality = row['Artist Nationality']
#     t.artist_begin_date = row['Artist Begin Date']
#     t.artist_end_date = row['Artist End Date']
#     t.object_date = row['Object Date']
#     t.object_begin_date = row['Object Begin Date']
#     t.object_end_date = row['Object End Date']
#     t.medium = row['Medium']
#     t.dimensions = row['Dimensions']
#     t.credit_line = row['Credit Line']
#     t.geography_type = row['Geography Type']
#     t.city = row['City']
#     t.state = row['State']
#     t.county = row['County']
#     t.country = row['Country']
#     t.region = row['Region']
#     t.subregion = row['Subregion']
#     t.locale = row['Locale']
#     t.locus = row['Locus']
#     t.excavation = row['Excavation']
#     t.river = row['River']
#     t.classification = row['Classification']
#     t.rights_and_reproduction = row['Rights and Reproduction']
#     t.link_resource = row['Link Resource']
#     t.metadata_date = row['Metadata Date']
#     t.repository = row['Repository']
#     t.image_url = image_url
#     t.save
#     puts "#{t.department}, #{t.title}, #{t.image_url} saved"
#   end
# end

# puts "There are now #{MetObject.count} rows in the transactions table"