class TeamSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :primary, :secondary
  has_many :players
  has_many :users
end
