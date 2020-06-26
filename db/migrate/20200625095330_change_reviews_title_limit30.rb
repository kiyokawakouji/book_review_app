class ChangeReviewsTitleLimit30 < ActiveRecord::Migration[5.1]
  def up
    change_column :reviews, :title, :string, limit: 30
  end
  
  def down
    change_column :reviews, :title, :string
  end
end
