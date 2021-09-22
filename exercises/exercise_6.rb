require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

puts Store.has_many(:employees)
puts Store.belongs_to(:store)

@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Snow", hourly_rate: 34)
@store2.employees.create(first_name: "Yusuf", last_name: "Abdulla", hourly_rate: 65)
@store2.employees.create(first_name: "Kyle", last_name: "Lowry", hourly_rate: 100)
@store2.employees.create(first_name: "DeMar", last_name: "DeRozan", hourly_rate: 100)
