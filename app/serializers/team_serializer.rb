class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :primary, :secondary
  has_many :players
  has_many :users
end
