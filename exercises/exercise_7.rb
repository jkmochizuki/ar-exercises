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
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_one_apparel_type

  def must_carry_one_apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "is absent. Stores must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "is absent. Stores must carry at least one of the men's or women's apparel")
    end
  end

end

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
