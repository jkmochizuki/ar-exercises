require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

store_3 = Store.find_by(id: 3)
@store3 = store_3

store_3.destroy

count = Store.count
puts count