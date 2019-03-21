class Game < ApplicationRecord
  belongs_to :team
  belongs_to :opponent, optional: true
  has_and_belongs_to_many :players
end
