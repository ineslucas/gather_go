class Game < ApplicationRecord
  has_many :party_games
  has_many :parties, through: :party_games
end
