require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

store_1 = Store.find_by(id: 1)
@store1 = store_1

store_2 = Store.find_by(id: 2)
@store2 = store_2