class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :gender, :last_name, :nickname
  belongs_to :player
end
