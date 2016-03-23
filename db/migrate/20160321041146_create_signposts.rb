class CreateSignposts < ActiveRecord::Migration
  def change
    create_table :signposts do |t|
      t.string :label
      t.string :img_url

      t.timestamps null: false
    end
  end
end
