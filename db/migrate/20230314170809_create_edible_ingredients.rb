class CreateEdibleIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :edible_ingredients do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :edible, null: false, foreign_key: true

      t.timestamps
    end
  end
end
