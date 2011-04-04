# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'csv'
CSV.open('statenames.csv', 'r').each do |row|
  newstate = State.find_or_create_by_name_and_abreviation(row[0],row[1])
	newstate.save
end

CSV.open('coordinators.csv', 'r' ).each do |row|
  abreviation = row[4]
  mysstate = State.find_by_abreviation(abreviation)
  stateidhere = mysstate.id
	County.create(:name => row[3], :state_id => stateidhere)
end

CSV.open('coordinators.csv', 'r').each do |row|
  abreviation = row[4]
  mystate = State.find_by_abreviation(abreviation)
	county = row[3]
	mycounty = County.find_by_name(county)
	popuser = mycounty.build_coordinator(:firstname => row[5], :lastname => row[6], :email => row[12], :street => row[13], :city => row[14], :zipcode => row[16], :phone_home => row[9], :phone_mobile => row[10], :phone_work => row[11])
popuser.state = mystate
popuser.save
end

CSV.open('counties.csv', 'r' ).each do |row|
  abreviation = row[1]
  mysstate = State.find_by_abreviation(abreviation)
  stateidhere = mysstate.id
	County.create(:name => row[0], :state_id => stateidhere)
end
