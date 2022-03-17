print "Creating Users...."

User.destroy_all

u1= User.create! name: 'angela', email: 'angela@ga.co', password: 'chicken', username: "@angela"
u2= User.create! name: 'luke', email: 'luke@ga.co', password: 'chicken', username: "@luke"
u3= User.create! name: 'rowena', email: 'rowena@ga.co', password: 'chicken', username: "@rowena"

puts "created #{User.count} users"


print "Creating Locations ...."

Location.destroy_all

l1 = Location.create! name: 'Syndey Opera House', city: 'Sydney', country: 'Australia', date_visited: '2022-03-18', visited: true, bucketlist: false, note: "Attended a concert there.", user_id: u1.id

puts "created #{Location.count} locations"
puts " #{u1.name} has visited #{u1.locations[0].name}"










# ##########
# print "Creating Countries..."

# Country.destroy_all

# c1 = Country.create! name:'Peru' 

# puts "created #{Country.count} Countries"

# ##########

# print "Creating Cities..."

# City.destroy_all

# ct1 = City.create! name:'Lima', travel_date:"2022-03-01", country_id: c1.id
# puts "created #{City.count} cities"###########

