class CreateEdibles < ActiveRecord::Migration[7.0]
  def change
    create_table :edibles do |t|
      t.integer :type
      t.boolean :has_alcohol
      t.string :name

      t.timestamps
    end
  end
end
