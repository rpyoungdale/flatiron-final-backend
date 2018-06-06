class UserSerializer < ActiveModel::Serializer
  has_one :budget
  attributes :id, :first_name, :last_name, :username, :password, :budget
end
