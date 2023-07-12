class AddReviewToStats < ActiveRecord::Migration[7.0]
  def change
    add_column :stats, :review, :text
  end
end
