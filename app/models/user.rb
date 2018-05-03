class User < ApplicationRecord
  belongs_to :player
  has_and_belongs_to_many :teams

  validates_presence_of :first_name
  validates_presence_of :gender
  validates_presence_of :last_name
end
