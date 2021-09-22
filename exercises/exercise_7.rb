require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}
  validates :store, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, minimum: 0}
  validate :check_has_apparel
  
  def check_has_apparel 
    mens_apparel || womens_apparel 
  end

end

puts "Enter store name here: "
store_name = $stdin.gets.chomp
new_store = Store.create(name: store_name)

puts new_store.errors.full_messages



