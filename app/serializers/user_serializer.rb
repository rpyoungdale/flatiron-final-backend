class UserSerializer < ActiveModel::Serializer
  has_many :budgets
  attributes :id, :first_name, :last_name, :username, :password, :budgets
end
