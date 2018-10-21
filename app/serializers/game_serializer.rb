class GameSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :dash

  attributes :id, :closed, :our_score, :their_score, :opponent_name, :opponent_color
  belongs_to :team
end
