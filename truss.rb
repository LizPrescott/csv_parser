require "csv"
require 'pry'

file = CSV.foreach("broken.csv", headers: true) do |row|
	timestamp = row["Timestamp"]
	timestamp = DateTime.strptime("#{timestamp}", "%D %r")
	puts timestamp = DateTime.parse("#{timestamp}").iso8601 

	address = row["Address"].unicode_normalize
	row["ZIP"] 
	# puts row["FullName"] 
	# puts row[6] = row[5]-row[4] # dur
end 