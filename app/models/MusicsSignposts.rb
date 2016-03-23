class MusicsSignpostsTable < ActiveRecord::Base
  belongs_to :music, :foreign_key => 'music_id'
  belongs_to :signpost, :foreign_key => 'signpost_id'
end
