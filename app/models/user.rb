class User < ApplicationRecord
  has_one :budget
  # has_many :transactions, through: :budget
  # has_many :categories, through: :transactions
  has_secure_password
end
