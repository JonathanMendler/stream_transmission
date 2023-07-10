class CreateUserStatistics < ActiveRecord::Migration[7.0]
  def change
    create_table :user_statistics do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :avg_viewers
      t.integer :time_streamed
      t.integer :followers_gained

      t.timestamps
    end
  end
end
