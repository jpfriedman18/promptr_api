#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profileable_type, :profileable_id
end
