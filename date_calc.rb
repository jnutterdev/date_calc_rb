#!/usr/bin/env ruby
require 'date'

date_today = Date.today

print "Type 'add' if you want to see future date. Type 'sub' for past date: "
add_sub_input = gets.chomp
print "Use today's date or another date? Type 'today' or the date (yyyy-mm-dd): "
date_select = gets.chomp

if add_sub_input == 'add' && date_select == 'today'
  print 'How many days? '
  add = gets.chomp.to_i
  answer = date_today + add
  puts answer

elsif add_sub_input == 'add' && date_select != 'today'
  print 'How many days? '
  d = Date.parse(date_select)
  add = gets.chomp.to_i
  answer = d + add
  puts answer

elsif add_sub_input == 'sub' && date_select == 'today'
  print 'How many days ago? '
  sub = gets.chomp.to_i
  answer = date_today - sub
  puts answer.strftime('%m-%d-%Y')

elsif add_sub_input == 'sub' && date_select != 'today'
  print 'How many days? '
  d = Date.parse(date_select)
  sub = gets.chomp.to_i
  answer = d - sub
  puts answer
else
  puts 'Try again!'
end
