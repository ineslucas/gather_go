class AddDetailsToEdibles < ActiveRecord::Migration[7.0]
  def change
    add_column :edibles, :ingredients, :text
    add_column :edibles, :instructions, :text
    add_column :edibles, :description, :text
  end
end
