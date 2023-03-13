class AddEmojiToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :emoji, :string
  end
end
