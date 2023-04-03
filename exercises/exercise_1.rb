require_relative '../setup'

puts "Exercise 1"
puts "----------"

Store.create(name: "Burnaby", annual_revenue: "300000", mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: "1260000", mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: "190000", mens_apparel: true, womens_apparel: false)

count = Store.count
puts count

# Stretch

@new_employee = Employee.create(first_name: "Mary", last_name: "Chen", hourly_rate: 90, store_id: 1)
puts @new_employee[:password]