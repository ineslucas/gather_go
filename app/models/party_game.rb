class PartyGame < ApplicationRecord
  belongs_to :party
  belongs_to :game
end
