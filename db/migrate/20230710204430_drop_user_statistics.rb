class DropUserStatistics < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_statistics
  end
end
