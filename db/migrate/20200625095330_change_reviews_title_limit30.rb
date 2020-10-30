class ChangeReviewsTitleLimit30 < ActiveRecord::Migration[5.1]
  # rails db:migrateの時の処理
  def up
    change_column :reviews, :title, :string, limit: 30
  end
  
  # rails db:rollbackの時の処理
  def down
    change_column :reviews, :title, :string
  end
end
