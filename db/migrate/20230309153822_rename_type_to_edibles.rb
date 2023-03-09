class RenameTypeToEdibles < ActiveRecord::Migration[7.0]
  def change
    rename_column :edibles, :type, :category
  end
end
