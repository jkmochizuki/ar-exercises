require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# 1
Store.has_many :employees

# 2
Employee.belongs_to :store

# 3
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 80)

# 4
@store1.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Miller", hourly_rate: 75)
@store1.employees.create(first_name: "Charlie", last_name: "Lee", hourly_rate: 85)
@store1.employees.create(first_name: "David", last_name: "Wong", hourly_rate: 70)
@store1.employees.create(first_name: "Emma", last_name: "Garcia", hourly_rate: 90)
@store2.employees.create(first_name: "Frank", last_name: "Liu", hourly_rate: 80)
@store2.employees.create(first_name: "Grace", last_name: "Brown", hourly_rate: 75)
@store2.employees.create(first_name: "Henry", last_name: "Nguyen", hourly_rate: 85)
@store2.employees.create(first_name: "Isabelle", last_name: "Taylor", hourly_rate: 70)
@store2.employees.create(first_name: "Jake", last_name: "Chen", hourly_rate: 90)

