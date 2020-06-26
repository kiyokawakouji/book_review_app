class ChangeReviewsTitleNotNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :reviews, :title, false
  end
end
