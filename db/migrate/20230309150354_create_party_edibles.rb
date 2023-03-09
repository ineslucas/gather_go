class CreatePartyEdibles < ActiveRecord::Migration[7.0]
  def change
    create_table :party_edibles do |t|
      t.references :party, null: false, foreign_key: true
      t.references :edible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
