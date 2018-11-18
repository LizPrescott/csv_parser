require "csv"
require 'pry'

file = CSV.foreach("broken.csv", headers: true) do |row|
	timestamp = row["Timestamp"]
	timestamp = DateTime.strptime("#{timestamp}", "%D %r")
	timestamp = DateTime.parse("#{timestamp}").iso8601 

	address = row["Address"].unicode_normalize
	zip = row["ZIP"] 
	while zip.length < 5
		puts zip = zip.prepend("0")
	end 
	# puts row["FullName"] 
	# puts row[6] = row[5]-row[4] # dur
end 