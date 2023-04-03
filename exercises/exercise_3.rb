require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# 1
store_3 = Store.find(3)
@store3 = store_3

# 2
store_3.destroy

# 3
count = Store.count
puts count