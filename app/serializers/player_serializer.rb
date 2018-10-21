class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash

  attributes :id, :first_name, :gender, :last_name, :nickname
  has_many :teams
end
