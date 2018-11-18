require "csv"
require 'pry'

file = CSV.foreach("broken.csv", headers: true) do |row|
	timestamp = row["Timestamp"]
	timestamp = DateTime.strptime("#{timestamp}", "%D %r")
	puts timestamp.is_a? DateTime
	timestamp = DateTime.strptime("#{timestamp}").iso8601
	timestamp = DateTime.parse("#{timestamp}")
	puts timestamp.is_a? DateTime

	address = row["Address"].unicode_normalize
	zip = row["ZIP"] 
	while zip.length < 5
		zip = zip.prepend("0")
	end 
	# puts row["FullName"] 
	# puts row[6] = row[5]-row[4] # dur
end 