class Edible < ApplicationRecord
  # needs associations and validations
  has_many :party_edibles
  has_many :parties, through: :party_edibles

  # to be solved recategorized later
  enum :category, { mocktail: 0, cocktail: 1, main: 2 }
end
