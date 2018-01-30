#!/usr/bin/env ruby
require 'date'

date_today = Date.today

print "What is the beginning date? (yyyy-mm-dd or 'today')? "
date_one = gets.chomp

if date_one == 'today'
	date_one = date_today
	puts date_one
else 
	puts date_one
end

print "What is the end date? (yyyy-mm-dd or 'today')? "
date_two = gets.chomp

if date_two == 'today'
	date_two = date_today
	puts date_two
else  
	puts date_two
end

start_date = Date.parse(date_one)
end_date = Date.parse(date_two)
date_today = Date.strptime(date_today)



if start_date > end_date
	days_apart = start_date - end_date
	puts "The difference is #{days_apart}! \n"
else 
	days_apart = end_date - start_date
	puts "The difference is #{days_apart}! \n"
end