class RemoveGameFromParties < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :game, :string
  end
end
