namespace :db do
	desc "Fill database with companies sample data"
	task populate: :environment do
		Company.create!(registeredName: "VivekSoft", 
  								  registeredAddress: "109 UK",
  								  vatNumber: "GB1094",
  								  email: "VivekSoft@gb.com")
		99.times do |n|
			registeredName1 = Faker::Name.name
			registeredAddress1 = "#{n} UK"
			vatNumber1 = "#{n}"
			email1 = "example-#{n+1}@railstutorial.org"
			Company.create!(registeredName: registeredName1, 
  								  registeredAddress:  registeredAddress1,
  								  vatNumber: vatNumber1,
  								  email: email1)
		end	
	end	
end