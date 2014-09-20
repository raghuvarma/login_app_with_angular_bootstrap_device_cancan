# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
 name = Role.create([{name: 'Admin'}, {name: 'Agent'},{name: 'Customer'}])

 
 #user = User.create! :name => 'saich', :email => 'sai@example.com', :password => 'Password12', :password_confirmation => 'Password12'