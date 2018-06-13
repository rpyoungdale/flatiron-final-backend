class TransactionSerializer < ActiveModel::Serializer
  belongs_to :category
  attributes :id, :category_id, :merchant, :amount
end
