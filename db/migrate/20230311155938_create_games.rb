class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :materials
      t.text :description
      t.text :instructions

      t.timestamps
    end
  end
end
