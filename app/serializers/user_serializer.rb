class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash

  attributes :id, :email
  belongs_to :player
  has_many :teams
end
