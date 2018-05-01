class User < ApplicationRecord
  belongs_to: :player
  has_and_belongs_to_many: :teams
end
