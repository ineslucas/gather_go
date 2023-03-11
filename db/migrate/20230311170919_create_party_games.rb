class CreatePartyGames < ActiveRecord::Migration[7.0]
  def change
    create_table :party_games do |t|
      t.references :party, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
