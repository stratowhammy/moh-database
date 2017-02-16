require 'csv'

task import_congress_people: :environment do |t, args|
	csv_text = File.read("legfix.csv")
	csv = CSV.parse(csv_text, headers:true)
	csv.each do |row|
		CongressPerson.create(row.to_hash)
	end
end