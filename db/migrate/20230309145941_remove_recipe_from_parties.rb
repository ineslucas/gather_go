class RemoveRecipeFromParties < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :recipe
  end
end
