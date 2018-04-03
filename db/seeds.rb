User.destroy_all
u1 = User.create :email => 'james@jack.com'
u2 = User.create :email => 'jack@jack.com'

City.destroy_all
c1 = City.create(:name => "King's Landing", :population => 1000000, :image => 'https://vignette.wikia.nocookie.net/gameofthrones/images/4/43/GreatSeptExteriors.jpg/revision/latest?cb=20150321161915')
c2 = City.create(:name => 'Winterfell', :population => 7000, :image => 'https://vignette.wikia.nocookie.net/gameofthrones/images/5/50/Winterfell_Exterior.jpg/revision/latest?cb=20110705175851')
c3 = City.create(:name => 'The Dreadfort', :population => 4000, :image => 'https://cdna.artstation.com/p/assets/images/images/008/533/990/large/anton-bobrowski-dreadfort.jpg?1513363169')
c4 = City.create(:name => 'Braavos', :population => 900000, :image => 'https://vignette.wikia.nocookie.net/gameofthrones/images/4/43/Braavos_5x02.png/revision/latest?cb=20150420161039')
c5 = City.create(:name => 'Yin', :population => 1500000, :image => 'https://i.ytimg.com/vi/dLqwrfgTEEE/maxresdefault.jpg')

House.destroy_all
h1 = House.create(:name => 'House Baratheon', :lord => 'King Joffrey Baratheon', :heir => 'Prince Tommen Baratheon', :words => 'Ours is the Fury', :image => 'http://awoiaf.westeros.org/images/thumb/2/2d/House_Baratheon.svg/1090px-House_Baratheon.svg.png')
h2 = House.create(:name => 'House Stark', :lord => 'Lord Eddard Stark', :heir => 'Robb Stark', :words => 'Winter is Coming', :image => 'http://awoiaf.westeros.org/images/thumb/7/7e/House_Stark.svg/1090px-House_Stark.svg.png')
h3 = House.create(:name => 'House Bolton', :lord => 'Lord Roose Bolton', :heir => 'Domeric Bolton', :words => 'Our Blades are Sharp', :image => 'https://vignette.wikia.nocookie.net/gameofthrones/images/d/dd/House-Bolton-Main-Shield.PNG/revision/latest?cb=20161231131431')
h4 = House.create(:name => 'House Antaryon', :lord => 'Sealord Ferrego Antaryon')
h5 = House.create(:name => 'House Bu', :lord => 'God Emperor Bu Gai', :heir => 'Prince Bu Bai')

Region.destroy_all
r1 = Region.create(:name => 'The Crownlands', :culture => 'Kingslander', :religion => 'The Seven', :capital => "King's Landing", :image => 'https://i.pinimg.com/originals/09/ea/55/09ea55595033513b67901ef8ccee2d79.jpg')
r2 = Region.create(:name => 'The North', :culture => 'Northman', :religion => 'The Old Gods', :capital => 'Winterfell', :image => 'http://store44.com/wp-content/uploads/michael-gellatly-world-of-ice-and-fire-north.jpg')
r3 = Region.create(:name => 'Braavosian Coastland', :culture => 'Braavosi', :religion => 'Many Gods', :capital => 'Braavos', :image => 'https://i2.wp.com/www.fantasticmaps.com/wp-content/uploads/2013/03/Braavos_lowres.jpg')
r4 = Region.create(:name => 'Yi Ti', :culture => 'YiTish', :religion => 'Gods of the Yi Ti', :capital => 'Yin', :image => 'https://i0.wp.com/www.fantasticmaps.com/wp-content/uploads/2013/03/TheEast.jpg')

# Houses and Cities

h1.cities << c1
h2.cities << c2
h3.cities << c3
h4.cities << c4
h5.cities << c5

# Regions and Cities

r1.cities << c1
r2.cities << c2 << c3
r3.cities << c4
r4.cities << c5
