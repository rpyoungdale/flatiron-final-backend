class TransactionSerializer < ActiveModel::Serializer
  belongs_to :budget
  belongs_to :category
  attributes :id, :budget_id, :category_id, :category
end
