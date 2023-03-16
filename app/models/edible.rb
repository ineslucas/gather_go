class Edible < ApplicationRecord
  # needs associations and validations
  has_many :party_edibles
  has_many :parties, through: :party_edibles
  has_many :ingredients, dependent: :destroy


  enum :category, { mocktail: 0, cocktail: 1, main: 2, appetizer: 3 }
end
