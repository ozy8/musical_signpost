class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :feeling
      t.string :youtube_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
