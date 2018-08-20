class GameSerializer < ActiveModel::Serializer
  attributes :id, :closed, :our_score, :their_score
  belongs_to :team
end
