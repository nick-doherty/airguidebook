User.destroy_all
Amenity.destroy_all
EmergencyContact.destroy_all
Extra.destroy_all
RegionFact.destroy_all
Restaurant.destroy_all
SuburbFact.destroy_all
TransportLink.destroy_all

u1 = User.create(:name => 'Jen Taunton')
u2 = User.create(:name => 'Bec Munro')

h1 = House.create(:street => '30 Maria Street', :air_url => 'https://www.airbnb.com.au/rooms/1543644', :suburb => 'Petersham', :region => 'Sydney', :state => 'NSW', :postcode => '2049', :country => 'Australia')
h2 = House.create(:street => '42 Juliett Street',:air_url => 'https://www.airbnb.com.au/rooms/745248', :suburb => 'Enmore', :region => 'Sydney', :state => 'NSW', :postcode => '2042', :country => 'Australia')

am1 = Amenity.create(:name => 'Foxtel', :info => 'We have a full Foxtel package including Movies and Sport.')
am2 = Amenity.create(:name => 'Air Conditioning', :info => 'We have reverse cycle air con in the Lounge Room.')

e1 = EmergencyContact.create(:service => 'Doctor', :contact => '02 9456 7612')
e2 = EmergencyContact.create(:service => 'Hospital', :contact => '02 3291 5291')

x1 = Extra.create(:text => 'Watch out for the Greek guy over the road. He is a bit annoying but totally harmless.')
x2 = Extra.create(:text => 'The doorkey is in a locked box outside the house. We will text you the combination on arrival.')

rf1 = RegionFact.create(:fact => 'Sydney Wikipedia', :link => 'http://en.wikipedia.org/wiki/Sydney')
rf2 = RegionFact.create(:fact => 'Sydney Opera House', :link => 'http://www.sydneyoperahouse.com/homepage.aspx')

rs1 = Restaurant.create(:name => 'Petersham Charcoal Chicken', :cuisine => 'Portugeuse', :cost => 'cheap', :link => 'http://www.urbanspoon.com/r/70/1590452/restaurant/Sydney/The-Hills/Frango-Bella-Vista')
rs2 = Restaurant.create(:name => 'Emmas on Liberty', :cuisine => 'Lebanese', :cost => 'mid', :link => 'http://www.emmasonliberty.com.au/')

sf1 = SuburbFact.create(:fact => 'Petersham Wikipedia', :link => 'http://en.wikipedia.org/wiki/Petersham,_New_South_Wales')
sf2 = SuburbFact.create(:fact => 'Enmore Wikipedia', :link => 'http://en.wikipedia.org/wiki/Enmore,_New_South_Wales')

t1 = TransportLink.create(:type => 'Bus', :info => 'The 428 leaves at the top of our street and goes to the city in 20 minutes.')
t2 = TransportLink.create(:type => 'Train', :info => 'You can walk to Newtown Station in ten minutes.')

h1.amenities << am1
h2.amenities << am2

h1.emergency_contacts << e1
h2.emergency_contacts << e2

h1.extras << x1
h2.extras << x2

h1.region_facts << rf1
h2.region_facts << rf2

h1.restaurants << rs1
h2.restaurants << rs2

h1.suburb_facts << sf1
h2.suburb_facts << sf2

h1.transport_links << t1
h2.transport_links << t2

u1.houses << h1
u2.houses << h2
