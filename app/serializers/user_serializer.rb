class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  belongs_to :player
  has_many :teams
end
