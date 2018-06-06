class CategorySerializer < ActiveModel::Serializer
  has_many :budgets
  attributes :name
end
