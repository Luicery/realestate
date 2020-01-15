# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Agent.destroy_all
agent1 = Agent.create name:"Samuel Wong", image:"https://www.phrealty.co.nz/photosEnt/340,340/34506.jpg", company:"PH Realty", email:"s.wong@phrealty.co.nz", phone:"0277045603", password:"test"

User.destroy_all
user1 = User.create name:"Random Guy", username:"Im random", phone:"FakeNumber", email:"fake@fake.com", password:"test"

Property.destroy_all
property1 = Property.create address:"25 Phar Lap Crescent, Takanini", title:"Executive Home In Prime Location", price:"$790,000", bedrooms:4, bathrooms:2, parking:2, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", area:1000
property2 = Property.create address:"example", title:"example", price:"a Price", bedrooms:1, bathrooms:1, parking:1, description:"asd"
property3 = Property.create address:"example", title:"example", price:"a Price", bedrooms:1, bathrooms:1, parking:1, description:"asd"
property4 = Property.create address:"example", title:"example", price:"a Price", bedrooms:1, bathrooms:1, parking:1, description:"asd"
property1.agents << agent1
property2.agents << agent1
property3.agents << agent1
property4.agents << agent1

Image.destroy_all
image1 = Image.create image:"https://www.phrealty.co.nz/photos/677,381/742660-02.jpg?c=1&pcol=cccccc"
image2 = Image.create image:"https://www.phrealty.co.nz/photos/677,381/742660-03.jpg?c=1&pcol=cccccc"
image3 = Image.create image:"https://www.phrealty.co.nz/photos/677,381/742914-01.jpg?c=1&pcol=cccccc"
image4 = Image.create image:"https://www.phrealty.co.nz/photos/677,381/745924-01.jpg?c=1&pcol=cccccc"
image5 = Image.create image:"https://www.phrealty.co.nz/photos/677,381/739982-01.jpg?c=1&pcol=cccccc"

property1.images << image1 << image2
property2.images << image3
property3.images << image4
property4.images << image5
Watch.destroy_all
watch1 = Watch.create
watch2 = Watch.create
watch1.properties << property1 << property2
watch2.properties << property3 << property4

agent1.watch << watch1
user1.watch << watch2
