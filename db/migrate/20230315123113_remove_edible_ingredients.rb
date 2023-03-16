class RemoveEdibleIngredients < ActiveRecord::Migration[7.0]
  def change
    drop_table :edible_ingredients

    add_reference :ingredients, :edible, null: false
  end
end
