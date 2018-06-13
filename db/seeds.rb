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

Budget.create(user_id: 1, balance: 10000.00, month: "June", year: '2018')
Budget.create(user_id: 1, balance: 10000.00, month: "May", year: '2018')
Budget.create(user_id: 2, balance: 6000.00, month: "June", year: '2018')
Budget.create(user_id: 3, balance: 70000.00, month: "June", year: '2018')
Budget.create(user_id: 4, balance: 80000.00, month: "June", year: '2018')

Category.create(name: 'Coffee', limit: '30.00', budget_id: 1)
Category.create(name: 'Fast Food', limit: '50.00', budget_id: 1)
Category.create(name: 'Restaurants', limit: '120.00', budget_id: 1)
Category.create(name: 'Alcohol', limit: '40.00', budget_id: 1)
Category.create(name: 'Gas', limit: '65.00', budget_id: 1)
Category.create(name: 'Fast Food', limit: '35.00', budget_id: 2)
Category.create(name: 'Alcohol', limit: '40.00', budget_id: 2)
Category.create(name: 'Entertainment', limit: '60.00', budget_id: 2)

Transaction.create(merchant: 'Starbucks', amount: 3.75, category_id: 1)
Transaction.create(merchant: 'McDonalds', amount: 4.25, category_id: 2)
Transaction.create(merchant: 'McDonalds', amount: 4.25, category_id: 6)
Transaction.create(merchant: 'McDonalds', amount: 6.25, category_id: 6)
Transaction.create(merchant: 'Peets Coffee', amount: 5.15, category_id: 1)
Transaction.create(merchant: 'Two Cousins', amount: 3.75, category_id: 3)
Transaction.create(merchant: 'First State Liquors', amount: 16.75, category_id: 4)
Transaction.create(merchant: 'First State Liquors', amount: 26.75, category_id: 7)
Transaction.create(merchant: 'Starbucks', amount: 3.95, category_id: 1)
Transaction.create(merchant: 'Shell', amount: 30.95, category_id: 5)
Transaction.create(merchant: 'Movies 10', amount: 30.95, category_id: 8)
