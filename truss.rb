require "csv"


CSV.foreach("broken.csv", headers: true) do |row|
	# puts timestamp = row["Timestamp"]
	# puts timestamp = DateTime.strptime(timestamp, '%e/%-m/%y %l:%M:%S %p')
	# puts DateTime.parse("timestamp").iso8601 
	puts row["Address"].unicode_normalize
	puts row["ZIP"] 
	# puts row["FullName"] 
	# puts row[6] = row[5]-row[4] # dur
end 