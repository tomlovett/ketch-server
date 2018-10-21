class GameSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash

  attributes :id, :closed, :our_score, :their_score
  belongs_to :team
end
