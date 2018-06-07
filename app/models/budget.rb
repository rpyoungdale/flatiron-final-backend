class Budget < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :transactions, through: :categories
end
