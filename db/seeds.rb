# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating restaurant'
Restaurant.create(name: 'Sea Palace', address: '8 Oosterdokskade', category: 'Chinese')
puts 'Created Sea Palace'
Restaurant.create(name: 'Italian Pizzaretta', address: '21 Overtoom', category: 'Italian')
puts 'Created Italian Pizzaretta'
Restaurant.create(name: 'Ku Restaurant', address: 'Utrechtsestraat 114', category: 'Japanese')
puts 'Created Ku'
Restaurant.create(name: "Rodrigo's", address: 'Bos en Lommer 55', category: 'French')
puts "Created Rodrigo's"
Restaurant.create(name: 'King Leopards', address: 'Singel 101', category: 'Belgian')
puts 'King Leopards'

puts "Finished! Created #{Restaurant.count} restaurants."
