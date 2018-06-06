class BudgetSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :transactions
  has_many :categories
  attributes :id, :user_id, :balance, :transactions, :categories
end
