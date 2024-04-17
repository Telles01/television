
puts "Cleaning database..."
#Scheme.destroy_all

puts "Creating schemes..."
cnn = {name: "CNN", address: "7 Boundary St, London E2 7JE", rating: 5}
globo =  {name: "Globo", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

[cnn, globo].each do |attributes|
  scheme = Scheme.create!(attributes)
  puts "Created #{scheme.name}"
end
puts "Finished!"
