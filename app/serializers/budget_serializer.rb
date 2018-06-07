class BudgetSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :categories
  has_many :transactions
  attributes :id, :user_id, :balance, :categories, :transactions
end
