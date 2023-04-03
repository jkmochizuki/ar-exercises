require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# 1
total_revenue = Store.sum('annual_revenue')
puts total_revenue

# 2
avg_revenue = Store.average('annual_revenue')
puts avg_revenue

# 3
number_stores = Store.where("annual_revenue >= 1000000").count
puts number_stores