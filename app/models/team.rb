class Team < ApplicationRecord
  has_many :games
  has_and_belongs_to_many :players
  has_and_belongs_to_many :users
end
