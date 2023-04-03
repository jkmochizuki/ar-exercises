require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# 1
# /lib

# 2
puts "Please enter a store name" 
store_name = gets.chomp

# 3
@new_store = Store.create(name: store_name)

# 4
if @new_store.invalid?
  puts "Failed to save store"
  @new_store.errors.full_messages.each do |message|
    puts message
  end
end
