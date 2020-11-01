require_relative "app/models/order"
require_relative "app/repositories/order_repository"
require_relative "app/repositories/meal_repository"
require_relative "app/repositories/customer_repository"
require_relative "app/repositories/employee_repository"

# require_relative "app/controllers/session_controller"
require "csv"

employee = Employee.new(id: 1, username: "bob", password: "secret", role: "manager")

customer = Customer.new(id: 1, name: "jacques", address:"5 rue fion")

meal = Meal.new(id: 1, name: "regina", price: 12)

order = Order.new(id: 1, delivered: false, customer: customer, employee: employee, meal: meal)



employee_repository = EmployeeRepository.new("data/employees.csv")
customer_repository = CustomerRepository.new("data/customers.csv")
meal_repository = MealRepository.new("data/meals.csv")

# p repository
# p repository.all
# p repository.find(1)
# puts "##############################################"
# p repository.all_delivery_guys
# puts "##############################################"

# session = SessionController.new(repository)
# p session.sign_in
# puts "###################################################"
order_repo = OrderRepository.new("data/orders.csv", meal_repository, customer_repository, employee_repository)
p order_repo.create(order)
