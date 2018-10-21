class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :email
  belongs_to :player
  has_many :teams
end
