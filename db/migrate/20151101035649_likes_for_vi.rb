class LikesForVi < ActiveRecord::Migration
  def change
    create_table :user_likes do |t|
      t.boolean :user_like
      t.integer :user_id
      t.integer :video_id
      t.timestamps null: false
  	end
  end
end
