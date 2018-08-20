class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :gender, :last_name, :nickname
  has_many :teams
end
