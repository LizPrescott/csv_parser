require "csv"
require 'pry'

file = CSV.foreach("broken.csv", headers: true) do |row|
	timestamp = row["Timestamp"]
	puts timestamp = DateTime.strptime("#{timestamp}", "%D %r")
	#puts timestamp = DateTime.parse(row["Timestamp"]).iso8601 # Gets the dateTime backwards and only runs twice

	address = row["Address"].unicode_normalize
	row["ZIP"] 
	# puts row["FullName"] 
	# puts row[6] = row[5]-row[4] # dur
end 