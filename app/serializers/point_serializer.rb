class PointSerializer < ActiveModel::Serializer
  attributes :id, :our_score, :their_score, :we_pulled, :we_scored
  belongs_to :game
end
