class CategorySerializer < ActiveModel::Serializer
  belongs_to :budget
  has_many :transactions
  attributes :id, :name, :budget_id, :transactions
end
