class GameSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :closed, :our_score, :their_score
  belongs_to :team
end
