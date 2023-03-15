class EdibleIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :edible
end
