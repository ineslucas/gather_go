class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :playlist
      t.string :recipe
      t.string :pinterest
      t.text :game
      t.text :description

      t.timestamps
    end
  end
end
