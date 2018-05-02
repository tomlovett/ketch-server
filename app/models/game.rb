class Game < ApplicationRecord
  belongs_to :team
  belongs_to :opponent
  has_and_belongs_to_many :players
  has_and_belongs_to_many :points
end
