print "Creating Users...."

User.destroy_all

u1= User.create! name: 'angela', email: 'angela@ga.co', password: 'chicken', username: "@angela"
u2= User.create! name: 'luke', email: 'luke@ga.co', password: 'chicken', username: "@luke"
u3= User.create! name: 'rowena', email: 'rowena@ga.co', password: 'chicken', username: "@rowena"

puts "created #{User.count} users"


print "Creating Locations ...."

Location.destroy_all

l1 = Location.create! name: 'Sydney Opera House', city: 'Sydney', country: 'Australia', date_visited: '2022-03-18', visited: true, bucketlist: false, note: "Attended a concert there.", user_id: u1.id,lat: "-33.8616201", lng: "151.2145216", images: ['https://awol.junkee.com/wp-content/uploads/2020/10/rbg-sydney-lead.jpg','https://pbs.twimg.com/media/ET1cmusWAAAVKJj.jpg']
l2 = Location.create! name: 'Royal Botanical Garden', city: 'Sydney', country: 'Australia', date_visited: '2022-01-11', visited: true, bucketlist: false, note: "Lovely Place!! ", user_id: u1.id,lat: "-33.8641859", lng: "151.2166", images: ['https://awol.junkee.com/wp-content/uploads/2020/10/rbg-sydney-lead.jpg','https://pbs.twimg.com/media/ET1cmusWAAAVKJj.jpg']
l3 = Location.create! name: 'SEA LIFE-Sydney Aquarium', city: 'Sydney', country: 'Australia', date_visited: '2022-03-18', visited: true, bucketlist: false, note: "Meet up with adorable Otters.", user_id: u2.id,lat: "-33.8695132", lng: "151.2060458", images: ['https://lh5.googleusercontent.com/p/AF1QipO4pMTtGu3d_NvSCQn8-kmeC1cj9HutFnnHZn-O=w426-h240-k-no','https://pbs.twimg.com/media/ET1cmusWAAAVKJj.jpg']
l4 = Location.create! name: 'Museum of Contemporary Art ', city: 'Sydney', country: 'Australia', date_visited: '2022-03-18', visited: false, bucketlist: true, user_id: u2.id,lat: "-33.862245", lng: "151.2075851"

puts "created #{Location.count} locations"
puts " #{u1.name} has #{u1.locations.length} locations marked"
puts " #{u2.name} has #{u2.locations.length} locations marked"
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

