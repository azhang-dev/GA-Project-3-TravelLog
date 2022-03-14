print "Creating Users...."

User.destroy_all

u1= User.create! name: 'angela', email: 'angela@ga.co', password: 'chicken'
u2= User.create! name: 'luke', email: 'luke@ga.co', password: 'chicken'
u2= User.create! name: 'rowena', email: 'rowena@ga.co', password: 'chicken'

puts "created #{User.count} users"

##########
print "Creating Countries..."

Country.destroy_all

c1 = Country.create! name:'Peru' 

puts "created #{Country.count} Countries"

##########

print "Creating Cities..."

City.destroy_all

ct1 = City.create! name:'Lima'
puts "created #{City.count} cities"###########

