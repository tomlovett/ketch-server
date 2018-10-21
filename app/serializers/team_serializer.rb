class TeamSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash

  attributes :id, :name, :primary, :secondary
  has_many :players
  has_many :users
end
