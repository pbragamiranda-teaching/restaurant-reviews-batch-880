puts "Cleaning up database.."
Restaurant.destroy_all


puts "Creating restaurants.."

51.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: ["Victor Lima", "Jamie Oliver", "Gordon Ramsey", "Giro"].sample
  )
  new_restaurant.save
  puts "restaurant #{new_restaurant.id} sucessfully created."
end

puts "done."
