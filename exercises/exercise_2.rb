require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# 1
store_1 = Store.find(1)
@store1 = store_1

# 2
store_2 = Store.find(2)
@store2 = store_2

# 3
@store1.update(name: "Metrotown")