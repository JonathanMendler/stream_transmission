class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.string :player_support
      t.text :image_url

      t.timestamps
    end
  end
end
