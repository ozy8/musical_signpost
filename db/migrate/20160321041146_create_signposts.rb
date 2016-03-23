class CreateSignposts < ActiveRecord::Migration
  def change
    create_table :signposts do |t|
      t.string :label

      t.timestamps null: false
    end
  end
end
