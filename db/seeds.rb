# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.create!(
  name: 'A cupboard under the stairs',
  address: '4 Privet Drive, Little Whinging, Surrey, England',
  description: 'A lovely summer feel for this spacious cupboard room. One small room, lots of storage and a friendly spider',
  price_per_night: 75,
  number_of_guests: 1
)

Flat.create!(
  name: 'Entire apartment in North District',
  address: 'North District, Taichung City, Taiwan',
  description: 'Vinyl records atmosphere homestay',
  price_per_night: 100,
  number_of_guests: 2
)


Flat.create!(
  name: 'Lemeng Hotel (Beijing Houhai Drum Tower)',
  address: 'No. 2 Xitao Hutong, Jiugulou Street, Xicheng District, Beijing, China',
  description: 'The Lemeng Hotel (Beijing Houhai Drum Tower) is an ideal spot for travelers wanting to discover the city',
  price_per_night: 35,
  number_of_guests: 2
)
