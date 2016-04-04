#
class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :profileable_type, :profileable_id

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
