class MusicsSignpostsTable < ActiveRecord::Migration
    def change
        create_join_table :musics, :signposts do |t|
        t.integer :music_id
        t.integer :signpost_id
        end
    end
end
