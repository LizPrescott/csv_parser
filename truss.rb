# -*- encoding: utf-8 -*-
require "csv"
require 'active_support/time'
require 'pry'

def timestamp(timestamp)
	timestamp = DateTime.strptime("#{timestamp}", "%D %r")
	timestamp = DateTime.strptime("#{timestamp}").iso8601
	timestamp = DateTime.parse("#{timestamp}").advance(hours: 3)
end 

def address(address)
	address = address.unicode_normalize
end 

def parser(file) 
	file = CSV.foreach(file, headers: true) do |row|
		new_row = []
		new_row << timestamp(row["Timestamp"])
		new_row << address(row["Address"])
		zip = row["ZIP"] 
		while zip.length < 5
			zip = zip.prepend("0")
		end 
		new_row << zip
		puts new_row
	end 
end 

return parser("broken.csv")