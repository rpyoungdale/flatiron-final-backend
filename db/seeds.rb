# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'Ryan', last_name: 'Youngdale', username: 'rpyoungdale', password: 'r')
User.create(first_name: 'Megan', last_name: 'Schmitz', username: 'mmschmitz', password: 'm')
User.create(first_name: 'Eric', last_name: 'Youngdale', username: 'epyoungdale', password: 'e')
User.create(first_name: 'Carol', last_name: 'Youngdale', username: 'cjyoungdale', password: 'c')

Budget.create(user_id: 1, balance: 10000.00)
Budget.create(user_id: 2, balance: 6000.00)
Budget.create(user_id: 3, balance: 70000.00)
Budget.create(user_id: 4, balance: 80000.00)

Category.create(name: 'Coffee')
Category.create(name: 'Fast Food')
Category.create(name: 'Restaurants')
Category.create(name: 'Alcohol')
Category.create(name: 'Gas')
Category.create(name: 'Car Insurance')
Category.create(name: 'Gym')
Category.create(name: 'Mortgage')

Transaction.create(merchant: 'Starbucks', amount: 3.75, budget_id: 1, category_id: 1)
Transaction.create(merchant: 'Starbucks', amount: 4.25, budget_id: 3, category_id: 1)
Transaction.create(merchant: 'Starbucks', amount: 5.15, budget_id: 4, category_id: 1)
Transaction.create(merchant: 'State Farm', amount: 200.60, budget_id: 1, category_id: 6)
Transaction.create(merchant: 'Two Cousins', amount: 3.75, budget_id: 3, category_id: 3)
Transaction.create(merchant: 'First State Liquors', amount: 16.75, budget_id: 1, category_id: 4)
Transaction.create(merchant: 'Gym', amount: 30.75, budget_id: 2, category_id: 7)
Transaction.create(merchant: 'Starbucks', amount: 3.95, budget_id: 2, category_id: 1)
Transaction.create(merchant: 'DE Mortgage', amount: 3.75, budget_id: 4, category_id: 1)
