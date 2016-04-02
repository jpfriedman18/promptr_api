#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :teacher
end
