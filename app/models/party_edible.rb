class PartyEdible < ApplicationRecord
  belongs_to :party
  belongs_to :edible
end
