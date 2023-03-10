class AddCategoryToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :category, :integer
  end
end
